# Decisions — odin-webkit

Settled choices. An entry that stops being true is rewritten, not appended to.

## 1. Generated, not hand-written

The bindings are generated with runic from the headers Amber ships, so a library bump is a
regeneration. Hand fixes are the exception and are tracked in [PATCHED.md](PATCHED.md).

## 2. runic: Hyperquader-Coders/runic at amber-0.8

The generator is Hyperquader-Coders/runic at tag `amber-0.8`, built into
`../runic/build/runic`; the pin and the reasons are in odin-glib's DECISIONS §2. A new tag
moves the pin in that repo, not here.

## 3. Dependency types are external

Types from GLib, GObject, GIO, GTK 4 (with GDK and GSK), cairo, pango, gdk-pixbuf, graphene,
libsoup and JavaScriptCore are external sources in `webkit/rune.yml`, so none is declared a
second time. `webkit` imports `javascriptcore` through the `webkit` collection. The GTK
headers come from the system's gtk-4.0 including its subdirectories (`gtk/print`, `gdk/x11`
and the rest): a header directory left out of the globs makes runic declare its types again
inside `webkit`. The `g`, `G`, `tk`, `dk`, `sk`, `Soup` and `JSC` type prefixes are trimmed so external names match the
sibling bindings'. GTK macros are ignored, because runic would otherwise emit `GTK_*` and
`GDK_*` constants into `webkit`.

## 4. Licence: LGPL-2.1-or-later, with BSD notices kept

Debian's copyright file for libwebkitgtk-6.0-4 lists the WebKitGTK and JavaScriptCore API
headers under `LGPL-2+`; the headers say "version 2 of the License, or (at your option) any
later version" (Library GPL 2 in 71, Lesser GPL 2 or 2.1 in 19). Six headers
(`WebKitColorChooserRequest.h`, `WebKitDefines.h`, `WebKitSettings.h`,
`WebKitUserContentFilterStore.h`, `WebKitWebViewBase.h`, `JSCDefines.h`) are BSD-2-clause or
BSD-3-clause. The bindings are LGPL-2.1-or-later, which both permit, and the BSD notices are
kept in [LICENSE-webkitgtk-bsd.md](LICENSE-webkitgtk-bsd.md). Relicensing is ruled out: the
licence is the library's.

## 5. Linux x86_64 only, system libraries

The rune files list one platform and link `system:webkitgtk-6.0` and
`system:javascriptcoregtk-6.0`.

## 6. The tests need no display and no network

`WebView` needs a display, so tests cover the version, `Settings`, `URIRequest`, the type
functions and JavaScriptCore evaluation, which run headless. Opening a `WebView` is for the
consumers' GUI tests, on a private Xvfb.

## 7. Flag enums are bit_sets, chosen by a list

C flag types are `bit_set[FooBit; u32]`, so callers write `{.CASE_INSENSITIVE, .WRAP_AROUND}`.
`postprocess.sh` rewrites the enums runic emits; the members of `FooBit` are bit indices, and the
type keeps the C size (4 bytes) and bits, so procedures take and return it by value unchanged. A
zero member is the constant `Foo{}` under its C name; a name with no underscore (`NONE`) gets the
type's name as a prefix (`FIND_OPTIONS_NONE`), and a composite (`WEBSITE_DATA_ALL`) is a constant
set. The list is the `<bitfield>` entries of WebKit-6.0.gir (`EditorTypingAttributes`,
`FindOptions`, `HitTestResultContext`, `InputHints`, `SnapshotOptions`,
`WebExtensionMatchPatternOptions`, `WebsiteDataTypes`, `XRSessionFeatures`) and
JavaScriptCore-6.0.gir (`ValuePropertyFlags`). WebKit's header gives two of them a member at bit 0
or 1 where a zero would be expected: `WebExtensionMatchPatternOptions.NONE` is `1 << 0` and
`EditorTypingAttributes.EDITOR_TYPING_ATTRIBUTE_NONE` is `1 << 1`, so both stay members of the bit
enum, as the header has them. A new GFlags type in a header bump is added to the list by hand;
generation fails if a listed enum is missing, negative or has no single-bit member. A value rule
cannot tell them from plain enums: `CookieAcceptPolicy`, `CacheModel` and `PolicyDecisionType` are
enums, and the `WebKitSettings` flags are properties, not types.

## 8. Parameters are single objects unless declared

runic 0.8 writes `[^]T` for a pointer parameter whose C name ends in `s` (`settings`, `lines`),
however many elements it holds, which lets a caller index past one element, and drops a trailing
`va_list`, binding the procedure as `#c_vararg ..any`. Amber's runic fork (branch `amber-patched`)
has `parameters: declared`: with it every procedure parameter is `^T` (`T **` is `^^T`) unless
`arrays:` in the package's `rune.yml` lists it, chosen against the C headers, and a va_list
procedure is skipped. Struct members, variables and typedefs keep runic's name guess, and the
parameters of function-pointer types are plain `^T`: a limit of the fork, true in every binding.
Where a binding needs it, the `param_rules` table in `postprocess.sh` restores the `[^]` for
those parameters' real arrays, rewrites single-object struct members and corrects `T ***` outs;
a row that matches nothing fails the build. Rejected: rewriting the output in `postprocess.sh`,
which had to be told each parameter, matched `va_list` procedures by name pattern (it deleted
`list_store_insert_with_values` for containing `_va`) and was a second place to keep in step
with the headers. `scripts/check-generated.sh` stays as the guard that any regeneration, with
any runic, keeps the listed parameters right.
