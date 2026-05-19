#!/usr/bin/env node

import fs from 'node:fs'
import path from 'node:path'

const packageName = 'klaseca/skia-sys'

const platforms = {
  win32: { name: 'windows', library: 'libSkiaSharp.lib' },
  linux: { name: 'linux', library: 'libSkiaSharp.so' },
  darwin: { name: 'macos', library: 'libSkiaSharp.dylib' },
}

const architectures = {
  x64: 'x64',
  arm64: 'arm64',
  ia32: 'x86',
  arm: 'arm',
}

const toFlagPath = (file) => {
  const normalized = file.replaceAll(path.sep, '/')
  return /\s/.test(normalized) ? `"${normalized.replaceAll('"', '\\"')}"` : normalized
}

function fail(message) {
  console.error(`Skia prebuild: ${message}`)
  process.exit(1)
}

const platform = platforms[process.platform]

const architecture = architectures[process.arch]

if (!platform || !architecture) {
  fail(`unsupported host ${process.platform}/${process.arch}`)
}

const configuredSkiaPath = process.env.SKIA_PATH

if (!configuredSkiaPath) {
  fail('SKIA_PATH is not set')
}

if (!path.isAbsolute(configuredSkiaPath)) {
  fail('SKIA_PATH must be an absolute path')
}

const skiaPath = path.resolve(configuredSkiaPath)

const defaultOutDir = path.join(
  skiaPath,
  'out',
  platform.name,
  architecture,
  'release',
)

const libFile = path.join(defaultOutDir, platform.library)

if (!fs.existsSync(path.join(skiaPath, 'include', 'c', 'sk_types.h'))) {
  fail(
    `missing Skia C headers at ${skiaPath}. Set SKIA_PATH to the root containing include/c`,
  )
}

if (!fs.existsSync(libFile)) {
  fail(
    `missing Skia library at ${libFile}. Build or provide the dependency selected by SKIA_PATH`,
  )
}

const runtimeSearchFlag = process.platform === 'win32'
  ? ''
  : ` -Wl,-rpath,${toFlagPath(path.dirname(libFile))}`

process.stdout.write(
  JSON.stringify({
    vars: {
      SKIA_STUB_CC_FLAGS: `-I${toFlagPath(skiaPath)} -DSKIA_C_DLL`,
    },
    link_configs: [
      {
        package: packageName,
        link_flags: `${toFlagPath(libFile)}${runtimeSearchFlag}`,
      },
    ],
  }),
)
