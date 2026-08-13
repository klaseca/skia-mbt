name = "klaseca/skia-sys"

version = "0.1.0"

readme = "README.mbt.md"

repository = "https://github.com/klaseca/skia-mbt"

license = "Apache-2.0"

keywords = [ "skia", "graphics", "ffi" ]

description = "Low-level MoonBit bindings for Skia C API"

preferred_target = "native"

source = "src"

options(
  "--moonbit-unstable-prebuild": "prebuild.mjs",
)
