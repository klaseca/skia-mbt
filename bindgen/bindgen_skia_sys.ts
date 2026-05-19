#!/usr/bin/env node

import { existsSync, readFileSync, writeFileSync } from 'node:fs'
import { basename, resolve } from 'node:path'
import { generateFiles, syncGeneratedFiles } from 'moonbit-bindgen'
import {
  createBindingEmitters,
  formatGenerationSummary,
  lowerBindings,
  loadBindingC,
  createSourceCRegex,
} from 'moonbit-bindgen/c'

import { skiaSysConfig } from './skia_sys.config.ts'

const source = createSourceCRegex({
  prepareType: (type) => type.replace(/\bSK_C_API\b/g, ''),
  prepareFunctionSource: (source) => source.replace(/^\s*#.*$/gm, ' '),
  headerOutputBase: (file) => basename(file, '.h').replace(/^sk_/, '').toLowerCase(),
  headerInclude: (file) => `<include/c/${file}>`,
  functionPattern: /SK_C_API\s+(.*?)\s+([A-Za-z_]\w*)\s*\((.*?)\)\s*;/g,
})

function writeIfChanged(path: string, content: string) {
  if (existsSync(path) && readFileSync(path, 'utf8') === content) {
    return false
  }
  writeFileSync(path, content, 'utf8')
  return true
}

const { api, config, outputDir } = loadBindingC({
  bindingName: 'skia',
  config: skiaSysConfig,
  source,
  baseDir: import.meta.dirname,
  namePrefixes: ['sk_'],
})
const binding = lowerBindings(api, config)
const files = generateFiles(binding, createBindingEmitters())
const result = syncGeneratedFiles({ outputDir, files })
const skippedPath = resolve(import.meta.dirname, 'skia.skipped.json')
const skipped = `${JSON.stringify(
  {
    generated: binding.diagnostics.generated,
    skipped: binding.diagnostics.skipped.length,
    functions: binding.diagnostics.skipped,
  },
  null,
  2,
)}\n`
const skippedChanged = writeIfChanged(skippedPath, skipped)

console.log(formatGenerationSummary(binding, files))
const changed = [...result.changed, ...(skippedChanged ? ['skia.skipped.json'] : [])]
console.log(changed.length > 0 ? `updated: ${changed.join(', ')}` : 'generated files are unchanged')
