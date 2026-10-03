#+test
package webkit

import "core:strings"
import "core:testing"
import gobj "glib:gobject"
import gtk4 "gtk4:gtk4"

// Version recorded in README.md: "**Bound version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (major, minor, micro: u32, ok: bool) {
    marker :: "**Bound version:** "
    readme := README
    i := strings.index(readme, marker)
    if i < 0 do return
    rest := readme[i + len(marker):]
    end := strings.index_any(rest, " \n")
    if end < 0 do return
    parts := strings.split(rest[:end], ".", context.temp_allocator)
    if len(parts) != 3 do return
    nums: [3]u32
    for p, n in parts {
        v: u32
        if len(p) == 0 do return
        for c in p {
            if c < '0' || c > '9' do return
            v = v * 10 + u32(c - '0')
        }
        nums[n] = v
    }
    return nums[0], nums[1], nums[2], true
}

@(test)
test_readme_version_matches_header_macros :: proc(t: ^testing.T) {
    major, minor, micro, ok := bound_version()
    testing.expect(t, ok, "README.md has no '**Bound version:** X.Y.Z'")
    testing.expect_value(t, major, u32(MAJOR_VERSION))
    testing.expect_value(t, minor, u32(MINOR_VERSION))
    testing.expect_value(t, micro, u32(MICRO_VERSION))
}

@(test)
test_loaded_library_is_not_older_than_the_headers :: proc(t: ^testing.T) {
    testing.expect_value(t, u32(get_major_version()), u32(MAJOR_VERSION))
    testing.expect(t, u32(get_minor_version()) >= u32(MINOR_VERSION), "WebKitGTK is older than the bound headers")
}

@(test)
test_uri_request_round_trip :: proc(t: ^testing.T) {
    req := uri_request_new("https://example.org/a")
    defer gobj.object_unref(req)
    testing.expect_value(t, string(uri_request_get_uri(req)), "https://example.org/a")
}

@(test)
test_settings_toggle :: proc(t: ^testing.T) {
    // WebKitSettings asks GDK's default display to prepare OpenGL, so a display must be open.
    // make test runs the tests under a private Xvfb (xvfb-run).
    if !testing.expect(t, bool(gtk4.init_check()), "no display: run the tests with make test (needs xvfb-run)") {
        return
    }
    s := settings_new()
    defer gobj.object_unref(s)
    settings_set_enable_javascript(s, true)
    testing.expect(t, bool(settings_get_enable_javascript(s)))
    settings_set_enable_javascript(s, false)
    testing.expect(t, !bool(settings_get_enable_javascript(s)))
    testing.expect(t, len(string(settings_get_user_agent(s))) > 0)
}

// `proxy_settings` is one `WebKitNetworkProxySettings *`: ^NetworkProxySettings, not [^].
@(test)
test_proxy_settings_copy_and_free :: proc(t: ^testing.T) {
    p := network_proxy_settings_new("http://proxy.invalid:3128", nil)
    testing.expect(t, p != nil)
    c := network_proxy_settings_copy(p)
    testing.expect(t, c != nil && c != p)
    network_proxy_settings_free(p)
    network_proxy_settings_free(c)
}

@(test)
test_type_functions_are_registered :: proc(t: ^testing.T) {
    testing.expect(t, TYPE_WEB_VIEW() != 0)
    testing.expect(t, TYPE_SETTINGS() != 0)
}

// Flag enums are bit_sets of the C bits (docs/DECISIONS.md §7): the size is that of the C enum
// (4 bytes) and a member's index is the position of its bit in the header (WebKitEditorState.h, WebKitFindController.h, WebKitHitTestResult.h, WebKitInputMethodContext.h, WebKitWebView.h, WebKitWebsiteData.h, WebKitWebExtensionMatchPattern.h, WebKitXRPermissionRequest.h).

bits :: proc(s: $S) -> u32 {
    return transmute(u32)s
}

@(test)
test_flag_sets_are_the_size_of_the_c_enum :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(EditorTypingAttributes), 4)
    testing.expect_value(t, size_of(FindOptions), 4)
    testing.expect_value(t, size_of(HitTestResultContext), 4)
    testing.expect_value(t, size_of(InputHints), 4)
    testing.expect_value(t, size_of(SnapshotOptions), 4)
    testing.expect_value(t, size_of(WebExtensionMatchPatternOptions), 4)
    testing.expect_value(t, size_of(WebsiteDataTypes), 4)
    testing.expect_value(t, size_of(XRSessionFeatures), 4)
}

@(test)
test_flag_bits_match_the_header :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(EditorTypingAttributes{.EDITOR_TYPING_ATTRIBUTE_NONE}), 1 << 1)
    testing.expect_value(t, bits(EditorTypingAttributes{.EDITOR_TYPING_ATTRIBUTE_STRIKETHROUGH}), 1 << 5)
    testing.expect_value(t, bits(FindOptions{.CASE_INSENSITIVE}), 1 << 0)
    testing.expect_value(t, bits(FindOptions{.BACKWARDS}), 1 << 3)
    testing.expect_value(t, bits(FindOptions{.WRAP_AROUND}), 1 << 4)
    testing.expect_value(t, bits(HitTestResultContext{.DOCUMENT}), 1 << 1)
    testing.expect_value(t, bits(HitTestResultContext{.SELECTION}), 1 << 7)
    testing.expect_value(t, bits(InputHints{.INPUT_HINT_SPELLCHECK}), 1 << 0)
    testing.expect_value(t, bits(InputHints{.INPUT_HINT_INHIBIT_OSK}), 1 << 5)
    testing.expect_value(t, bits(SnapshotOptions{.INCLUDE_SELECTION_HIGHLIGHTING}), 1 << 0)
    testing.expect_value(t, bits(SnapshotOptions{.TRANSPARENT_BACKGROUND}), 1 << 1)
    testing.expect_value(t, bits(WebExtensionMatchPatternOptions{.NONE}), 1 << 0)
    testing.expect_value(t, bits(WebExtensionMatchPatternOptions{.MATCH_BIDIRECTIONALLY}), 1 << 3)
    testing.expect_value(t, bits(WebsiteDataTypes{.WEBSITE_DATA_MEMORY_CACHE}), 1 << 0)
    testing.expect_value(t, bits(WebsiteDataTypes{.WEBSITE_DATA_COOKIES}), 1 << 6)
    testing.expect_value(t, bits(WebsiteDataTypes{.WEBSITE_DATA_DOM_CACHE}), 1 << 11)
    testing.expect_value(t, bits(XRSessionFeatures{.VIEWER}), 1 << 0)
    testing.expect_value(t, bits(XRSessionFeatures{.LAYERS}), 1 << 7)
}

@(test)
test_zero_members_are_the_empty_set :: proc(t: ^testing.T) {
    testing.expect_value(t, FIND_OPTIONS_NONE, FindOptions{})
    testing.expect_value(t, INPUT_HINT_NONE, InputHints{})
    testing.expect_value(t, SNAPSHOT_OPTIONS_NONE, SnapshotOptions{})
}

@(test)
test_composite_masks_are_sets :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(WEBSITE_DATA_ALL), (1 << 12) - 1)
}
