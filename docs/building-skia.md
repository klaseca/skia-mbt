# Building Skia

Skia is compiled locally on every development machine. The repository does not
publish or download prebuilt Skia binaries.

The build command supports native Windows, Linux, and macOS hosts. It detects
the host architecture, synchronizes Skia's source dependencies, generates the
GN build, and invokes Ninja for the `SkiaSharp` shared library.

## Prerequisites

All platforms require:

- Git
- Python 3.10 or newer

Platform toolchains:

- Windows: Visual Studio 2022 with the Desktop development with C++ workload.
  The build command initializes the Visual Studio environment through
  `vswhere`; running it from an existing Developer shell also works.
- Linux: Clang, a C++20 standard library, and development headers for
  Fontconfig, OpenGL, and X11.
- macOS: Xcode command-line tools.

## Build

From the repository root:

```sh
git submodule update --init --recursive
python scripts/build_skia.py
```

The build is incremental. To regenerate and compile without synchronizing
Skia's source dependencies again:

```sh
python scripts/build_skia.py --skip-deps
```

To remove the current host's output directory before building:

```sh
python scripts/build_skia.py --clean
```

The script has no dependency on the MoonBit project layout. When it is placed
outside this repository, pass the checkout explicitly with `--skia-dir`; an
external depot_tools checkout can be selected with `--depot-tools-dir` or the
`DEPOT_TOOLS` environment variable.

The generated release library is stored under:

```text
externals/skia/out/<system>/<architecture>/release
```

The system component is `windows`, `linux`, or `macos`. The resulting checkout
has the complete layout consumed by the MoonBit package:

```text
externals/skia/include/c/sk_types.h
externals/skia/out/<system>/<architecture>/release/libSkiaSharp.*
```

Before running MoonBit commands, set the absolute `SKIA_PATH` environment
variable to the Skia root:

```sh
# Linux and macOS
export SKIA_PATH=/absolute/path/to/skia-mbt/externals/skia
```

```powershell
# Windows PowerShell
$env:SKIA_PATH = "C:\absolute\path\to\skia-mbt\externals\skia"
```

The build hook uses the host system and architecture to select the matching
library under that root.

On Windows, the resulting `libSkiaSharp.dll` must be discoverable when running
a native executable. Add the current host's output directory to `PATH` for the
shell that runs `moon test` or `moon run`:

```powershell
$env:PATH = "$env:SKIA_PATH\out\windows\x64\release;$env:PATH"
```

Replace `x64` when building for another architecture. Linux and macOS builds
receive a runtime search path through the MoonBit link configuration.

Headers and the library are resolved from the same `SKIA_PATH` root so
incompatible installations cannot be mixed accidentally. A separately prepared
dependency can be used only if it reproduces the same `include/c` and
`out/<system>/<architecture>/release` layout.
