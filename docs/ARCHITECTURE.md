# Architecture: odin-webkit

## Generation

`make generate` runs runic over each package's `rune.yml`. The headers are /usr/lib/amber-webkit/include/webkitgtk-6.0 (amber-webkit-dev).
The output is committed, so consumers need neither runic nor the headers to build.

## Patches

Where runic gets a signature wrong, the fix is made by hand, listed in
[PATCHED.md](PATCHED.md), and pinned in `<pkg>/patched.odin` by a typed variable. A
regeneration that drops a patch then fails to compile.

## Collections

The collection `webkit` points at this repo's root. Packages import their siblings and the
bindings below them through collections, never by relative path.

![dependency graph](../diags/odin-webkit.svg)
