# Skia bindings for MoonBit

Native MoonBit bindings for the Skia C API. The repository contains two
modules:

- `klaseca/skia` is the small, safe high-level API used by applications.
- `klaseca/skia-sys` contains generated low-level bindings to Skia's C API.

Both modules target the native backend.

## Installation

Add the high-level module to an application:

```sh
moon add klaseca/skia
```

`klaseca/skia-sys` is pulled in transitively. Use it directly only when the
high-level API does not expose the required Skia operation.

The MoonBit package does not contain the native SkiaSharp library. Before
running `moon check`, `moon test`, `moon build`, or `moon run`, set the absolute
`SKIA_PATH` environment variable to a compatible native dependency root. The
root must have this layout for the current system and architecture:

```text
<SKIA_PATH>/include/c/sk_types.h
<SKIA_PATH>/out/<system>/<architecture>/release/libSkiaSharp.*
```

`<system>` is `windows`, `linux`, or `macos`; supported architecture names are
`x64`, `arm64`, `x86`, and `arm` where supported by the host. For example, when
using this repository's checkout:

```sh
# Linux and macOS
export SKIA_PATH=/absolute/path/to/skia-mbt/externals/skia
```

```powershell
# Windows PowerShell
$env:SKIA_PATH = "C:\absolute\path\to\skia-mbt\externals\skia"
$env:PATH = "$env:SKIA_PATH\out\windows\x64\release;$env:PATH"
```

On Windows, `libSkiaSharp.dll` must also be discoverable through `PATH` when an
executable starts. Linux and macOS builds embed a runtime search path to the
selected release directory.

The native build hook requires Node.js. A missing or incompatible dependency is
reported during the MoonBit prebuild step with the exact header or library path
that was checked.

## Using the high-level API

Owned Skia resources are backed by MoonBit finalizers. Use `dispose()` when
deterministic native resource release matters:

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

`dispose()` is idempotent. It releases the native resource immediately; the
finalizer is the fallback for resources that are not disposed explicitly. Do
not call methods on an owned resource after disposing it.

`Canvas` is a dependent view returned by `Surface::canvas()`. It does not own or
destroy the native canvas, but its generated wrapper retains the underlying
surface for as long as the canvas remains reachable. It therefore has no
`dispose()` method.

`Typeface::default()` selects the platform's default typeface. Reuse the same
typeface when creating fonts of different sizes; each `Font` retains its native
typeface independently.

### Pixel readback

For SDL-style window rendering, read the raster surface into a reusable BGRA8888
premultiplied pixel buffer. A `PixelBuffer` can only be created through its
checked constructor; its fields are readable but cannot be replaced.

```mbt nocheck
let pixels = try! @skia.PixelBuffer(width=640, height=360)

// In the render loop, after drawing:
try! surface.read_pixels_into(pixels)

// Upload `pixels.data` with pitch `pixels.row_bytes`.
```

`read_pixels_into` verifies the dimensions, row stride, and backing storage
before passing the buffer to Skia.

## Building the native dependency from source

This repository pins the compatible mono/skia checkout. Build it locally after
cloning; the command selects the current operating system and architecture on
Windows, Linux, and macOS:

```sh
git submodule update --init --recursive
python scripts/build_skia.py
```

The output already follows the `SKIA_PATH` layout described above. See
[Building Skia](docs/building-skia.md) for platform prerequisites and
incremental rebuild options.

Set `SKIA_PATH` as shown above, then run the native checks and drawing example
from the repository root. On Windows, also add the release directory to
`PATH`:

```sh
moon check --target native
moon test --target native
moon run examples/drawing --target native
```

The drawing example writes `skia-drawing.png`.

## Regenerating low-level bindings

Binding generation requires Node.js. Install the pinned
`moonbit-bindgen` dependency and run the project-owned Skia adapter:

```sh
npm install
npm run bindgen
```

The adapter reads `bindgen/skia_sys.config.ts` and writes generated MoonBit and
C files into `modules/skia-sys/src`. Generated files have `_gen.mbt` or
`_stub_gen.c` suffixes and must not be edited manually.

The following generated metadata is kept in version control:

- `modules/skia-sys/src/.bindgen.json` records files owned by the generator so
  stale generated files can be removed safely.
- `bindgen/skia.skipped.json` records C declarations that the current binding
  model cannot generate yet.

After changing the configuration or generator, review generated changes and
run:

```sh
moon info
moon fmt
moon test --target native
```
