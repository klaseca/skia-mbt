# klaseca/skia

High-level native MoonBit bindings for the C API provided by mono/skia's
SkiaSharp native library.

## Native dependency

The package requires compatible mono/skia C headers and a `libSkiaSharp`
library. Native artifacts are not included in the MoonBit package. The
repository release matching this package pins compatible sources and provides
the cross-platform build command in the
[building guide](https://github.com/klaseca/skia-mbt/blob/master/docs/building-skia.md).

Set the absolute `SKIA_PATH` environment variable to the dependency root. It
must contain `include/c`, and the matching library must be under
`out/<system>/<architecture>/release`.

The native prebuild hook requires Node.js. It validates both
`<SKIA_PATH>/include/c/sk_types.h` and the platform-specific library before
compilation starts.

On Windows, the matching `libSkiaSharp.dll` must also be on `PATH` when running
the executable. Linux and macOS builds use a runtime search path emitted by the
native build hook.

## Usage

Owned resources have native finalizers. Call `dispose()` when deterministic
release matters and do not use a resource after disposing it.

```mbt nocheck
let surface = try! @skia.Surface(width=640, height=360)
defer surface.dispose()

let paint = @skia.Paint()
defer paint.dispose()

let typeface = try! @skia.Typeface::default()
defer typeface.dispose()

let font = try! @skia.Font(typeface, size=32.0)
defer font.dispose()

surface.canvas().draw_text(b"MoonBit + Skia", x=48.0, y=96.0, font, paint)
try! surface.write_png(b"out.png")
```

`Canvas` is a dependent view. It does not own the native canvas and retains its
surface for as long as the view remains reachable.

`Typeface::default()` selects the platform default. One typeface can be reused
to create multiple fonts and can be disposed after they have been created.
