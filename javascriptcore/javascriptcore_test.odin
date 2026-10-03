#+test
package javascriptcore

import "core:strings"
import "core:testing"
import glib "glib:glib"
import gobj "glib:gobject"

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
    testing.expect(t, u32(get_minor_version()) >= u32(MINOR_VERSION), "JavaScriptCore is older than the bound headers")
}

@(test)
test_evaluate_expression :: proc(t: ^testing.T) {
    ctx := context_new()
    defer gobj.object_unref(ctx)
    v := context_evaluate(ctx, "6 * 7", -1)
    defer gobj.object_unref(v)
    testing.expect_value(t, value_to_int32(v), 42)
}

@(test)
test_evaluate_string :: proc(t: ^testing.T) {
    ctx := context_new()
    defer gobj.object_unref(ctx)
    v := context_evaluate(ctx, "'amber' + '-' + 'odin'", -1)
    defer gobj.object_unref(v)
    testing.expect(t, bool(value_is_string(v)))
    s := value_to_string(v)
    defer glib.free(rawptr(s))
    testing.expect_value(t, string(s), "amber-odin")
}

// Flag enums are bit_sets of the C bits (docs/DECISIONS.md §7): the size is that of the C enum
// (4 bytes) and a member's index is the position of its bit in the header (JSCValue.h).

bits :: proc(s: $S) -> u32 {
    return transmute(u32)s
}

@(test)
test_flag_sets_are_the_size_of_the_c_enum :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(ValuePropertyFlags), 4)
}

@(test)
test_flag_bits_match_the_header :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(ValuePropertyFlags{.VALUE_PROPERTY_CONFIGURABLE}), 1 << 0)
    testing.expect_value(t, bits(ValuePropertyFlags{.VALUE_PROPERTY_ENUMERABLE}), 1 << 1)
    testing.expect_value(t, bits(ValuePropertyFlags{.VALUE_PROPERTY_WRITABLE}), 1 << 2)
}
