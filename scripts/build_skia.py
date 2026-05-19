#!/usr/bin/env python3

from __future__ import annotations

import argparse
import os
import platform
import shlex
import shutil
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import NoReturn


@dataclass(frozen=True)
class Host:
    name: str
    gn_os: str
    architectures: dict[str, str]
    link_library: str
    runtime_library: str


HOSTS = {
    "win32": Host(
        name="windows",
        gn_os="win",
        architectures={
            "amd64": "x64",
            "x86_64": "x64",
            "arm64": "arm64",
            "x86": "x86",
        },
        link_library="libSkiaSharp.lib",
        runtime_library="libSkiaSharp.dll",
    ),
    "linux": Host(
        name="linux",
        gn_os="linux",
        architectures={
            "amd64": "x64",
            "x86_64": "x64",
            "aarch64": "arm64",
            "arm64": "arm64",
            "armv7l": "arm",
        },
        link_library="libSkiaSharp.so",
        runtime_library="libSkiaSharp.so",
    ),
    "darwin": Host(
        name="macos",
        gn_os="mac",
        architectures={
            "amd64": "x64",
            "x86_64": "x64",
            "aarch64": "arm64",
            "arm64": "arm64",
        },
        link_library="libSkiaSharp.dylib",
        runtime_library="libSkiaSharp.dylib",
    ),
}


def fail(message: str) -> NoReturn:
    raise RuntimeError(message)


def find_skia_dir(script: Path, requested: str | None) -> Path:
    if requested:
        candidates = [Path(requested)]
    else:
        candidates = []
        for parent in [script.parent, *script.parents]:
            candidates.extend([parent, parent / "externals" / "skia"])

    for candidate in candidates:
        resolved = candidate.expanduser().resolve()
        if (resolved / "BUILD.gn").is_file() and (resolved / "gn").is_dir():
            return resolved

    fail("Skia checkout was not found; pass --skia-dir /path/to/skia")


def find_depot_tools_dir(skia_dir: Path, requested: str | None) -> Path | None:
    configured = requested or os.environ.get("DEPOT_TOOLS")
    if configured:
        result = Path(configured).expanduser().resolve()
        if not result.is_dir():
            fail(f"depot_tools directory does not exist: {result}")
        return result

    candidate = skia_dir.parent / "depot_tools"
    return candidate if candidate.is_dir() else None


def run(command: list[str], cwd: Path, env: dict[str, str]) -> None:
    print(f"\n> {shlex.join(command)}", flush=True)
    subprocess.run(command, cwd=cwd, env=env, check=True)


def capture(command: list[str]) -> str | None:
    try:
        result = subprocess.run(
            command,
            check=True,
            capture_output=True,
            text=True,
        )
    except (OSError, subprocess.CalledProcessError):
        return None
    return result.stdout.strip()


def windows_build_environment(target_cpu: str) -> dict[str, str]:
    env = dict(os.environ)
    if sys.platform != "win32" or env.get("VSCMD_VER"):
        return env

    installation = env.get("VSINSTALLDIR")
    if not installation:
        system_drive = Path(env.get("SystemRoot", "C:\\Windows")).anchor
        program_files = (
            env.get("ProgramFiles(x86)")
            or env.get("PROGRAMFILES(X86)")
            or str(Path(system_drive) / "Program Files (x86)")
        )
        vswhere = Path(
            shutil.which("vswhere.exe")
            or Path(program_files)
            / "Microsoft Visual Studio"
            / "Installer"
            / "vswhere.exe"
        )
        if vswhere.is_file():
            installation = capture(
                [
                    str(vswhere),
                    "-latest",
                    "-products",
                    "*",
                    "-requires",
                    "Microsoft.VisualStudio.Component.VC.Tools.x86.x64",
                    "-property",
                    "installationPath",
                ]
            )

    if not installation:
        fail("Visual Studio C++ tools were not found; install them or use a Developer shell")

    vs_dev_cmd = Path(installation) / "Common7" / "Tools" / "VsDevCmd.bat"
    if not vs_dev_cmd.is_file():
        fail(f"VsDevCmd.bat was not found at {vs_dev_cmd}")

    machine = platform.machine().lower()
    host_arch = "arm64" if machine in {"arm64", "aarch64"} else "x64"
    command = f'call "{vs_dev_cmd}" -arch={target_cpu} -host_arch={host_arch} >nul && set'
    result = subprocess.run(
        command,
        shell=True,
        check=True,
        capture_output=True,
        text=True,
    )

    for line in result.stdout.splitlines():
        key, separator, value = line.partition("=")
        if separator and key:
            env[key] = value
    return env


def gn_string(value: str) -> str:
    escaped = value.replace("\\", "\\\\").replace('"', '\\"')
    return f'"{escaped}"'


def create_gn_args(host: Host, target_cpu: str) -> str:
    args = [
        f"target_os = {gn_string(host.gn_os)}",
        f"target_cpu = {gn_string(target_cpu)}",
        "is_debug = false",
        "is_official_build = true",
        "skia_enable_tools = false",
        "skia_enable_ganesh = true",
        "skia_enable_graphite = false",
        "skia_enable_skottie = true",
        "skia_use_dawn = false",
        "skia_use_direct3d = false",
        "skia_use_egl = false",
        "skia_use_gl = true",
        "skia_use_harfbuzz = false",
        "skia_use_icu = false",
        "skia_use_metal = false",
        "skia_use_perfetto = false",
        "skia_use_vulkan = false",
        "skia_use_dng_sdk = true",
        "skia_use_piex = true",
        "skia_use_system_expat = false",
        "skia_use_system_libjpeg_turbo = false",
        "skia_use_system_libpng = false",
        "skia_use_system_libwebp = false",
        "skia_use_system_zlib = false",
    ]

    if sys.platform == "win32":
        args.extend(
            [
                "skia_enable_fontmgr_win_gdi = false",
                'extra_cflags = [ "-DSKIA_C_DLL", "/MT", "/EHsc", "/Z7", '
                '"-D_HAS_AUTO_PTR_ETC=1" ]',
                'extra_ldflags = [ "/DEBUG:FULL", "/DEBUGTYPE:CV,FIXUP" ]',
            ]
        )
    else:
        args.extend(
            [
                f"cc = {gn_string(os.environ.get('CC', 'clang'))}",
                f"cxx = {gn_string(os.environ.get('CXX', 'clang++'))}",
                'extra_cflags = [ "-DSKIA_C_DLL" ]',
            ]
        )

    if sys.platform == "linux":
        args.append("skia_use_system_freetype2 = false")

    return "\n".join(args) + "\n"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build the SkiaSharp native library for this host"
    )
    parser.add_argument("--skia-dir", help="path to the mono/skia checkout")
    parser.add_argument("--depot-tools-dir", help="optional path to depot_tools")
    parser.add_argument(
        "--clean",
        action="store_true",
        help="remove this host's output first",
    )
    parser.add_argument(
        "--skip-deps",
        action="store_true",
        help="do not run tools/git-sync-deps",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    host = HOSTS.get(sys.platform)
    machine = platform.machine().lower()
    target_cpu = host.architectures.get(machine) if host else None
    if not host or not target_cpu:
        fail(f"unsupported host {sys.platform}/{machine}")

    script = Path(__file__).resolve()
    skia_dir = find_skia_dir(script, args.skia_dir)
    depot_tools_dir = find_depot_tools_dir(skia_dir, args.depot_tools_dir)
    out_root = (skia_dir / "out").resolve()
    out_dir = (out_root / host.name / target_cpu / "release").resolve()

    env = windows_build_environment(target_cpu)
    if depot_tools_dir:
        env["PATH"] = f"{depot_tools_dir}{os.pathsep}{env.get('PATH', '')}"
    env["GIT_SYNC_DEPS_SKIP_EMSDK"] = "1"

    if args.clean and out_dir.is_dir():
        try:
            out_dir.relative_to(out_root)
        except ValueError:
            fail(f"refusing to clean unexpected directory {out_dir}")
        shutil.rmtree(out_dir)

    if not args.skip_deps:
        run([sys.executable, "tools/git-sync-deps"], skia_dir, env)

    executable_suffix = ".exe" if sys.platform == "win32" else ""
    gn = skia_dir / "bin" / f"gn{executable_suffix}"
    ninja = skia_dir / "third_party" / "ninja" / f"ninja{executable_suffix}"
    if not gn.is_file():
        run([sys.executable, "bin/fetch-gn"], skia_dir, env)
    if not ninja.is_file():
        run([sys.executable, "bin/fetch-ninja"], skia_dir, env)

    out_dir.mkdir(parents=True, exist_ok=True)
    gn_args_file = out_dir / "args.gn"
    gn_args_file.write_text(create_gn_args(host, target_cpu), encoding="utf-8")

    run([str(gn), "format", str(gn_args_file)], skia_dir, env)
    run(
        [
            str(gn),
            "gen",
            str(out_dir),
            "--fail-on-unused-args",
            f"--script-executable={sys.executable}",
        ],
        skia_dir,
        env,
    )
    run([str(ninja), "-C", str(out_dir), "SkiaSharp"], skia_dir, env)

    link_library = out_dir / host.link_library
    runtime_library = out_dir / host.runtime_library
    if not link_library.is_file() or not runtime_library.is_file():
        fail(f"build completed without the expected {host.link_library} output")

    print(f"\nSkia was built locally in {out_dir}")
    print(f"Link library: {link_library}")
    if runtime_library != link_library:
        print(f"Runtime library: {runtime_library}")


if __name__ == "__main__":
    try:
        main()
    except (OSError, RuntimeError, subprocess.CalledProcessError) as error:
        print(f"Skia build: {error}", file=sys.stderr)
        raise SystemExit(1) from error
