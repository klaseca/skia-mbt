# klaseca/skia-sys

Generated low-level native MoonBit bindings to the C API provided by mono/skia's
SkiaSharp native library. Application code should normally use the safer
`klaseca/skia` module instead.

This module exposes C-shaped functions and types for the native backend. Opaque
resources configured by the binding generator use finalizer-backed wrappers;
value structs are represented by generated MoonBit values and matching C ABI
helpers.

## Native dependency

The module requires compatible mono/skia C headers and a `libSkiaSharp`
library. Native artifacts are not included in the MoonBit package. Set the
absolute `SKIA_PATH` environment variable to their common root. The prebuild
hook expects `<SKIA_PATH>/include/c/sk_types.h` and the platform-specific
library under `<SKIA_PATH>/out/<system>/<architecture>/release`.

The repository release matching this package pins the compatible checkout and
documents how to build it in the
[building guide](https://github.com/klaseca/skia-mbt/blob/master/docs/building-skia.md).
The native prebuild hook requires Node.js and reports the exact missing path
before compilation starts.

On Windows, the matching `libSkiaSharp.dll` must be available through `PATH` at
runtime. Linux and macOS builds use a runtime search path emitted by the native
build hook.

Files ending in `_gen.mbt` and `_stub_gen.c` are generated and must not be
edited manually. Binding contributors should use the generator command from the
[repository](https://github.com/klaseca/skia-mbt).
