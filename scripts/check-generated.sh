#!/usr/bin/env bash
# Fails when one of runic's three known faults is back in the generated output:
#   - a `#c_vararg` procedure whose C declaration took a `va_list` (runic drops the trailing
#     `va_list` and marks the procedure `#c_vararg ..any`, which is a wrong call), or
#   - a parameter listed in `corrected` typed `[^]T` again (runic writes `[^]T` for any pointer
#     parameter whose C name ends in "s", however many elements it holds).
#   - a `T **` out-parameter of one pointer typed `[^]^T` (listed in `arrays` when it is a real
#     array).
# rune.yml (`detect: parameters: declared`, `arrays:`) and the fork hold the fixes; `make check-generated` runs this, `make lint` runs that.
set -euo pipefail
cd "$(dirname "$0")/.."

files=("webkit/webkit.odin" "javascriptcore/javascriptcore.odin")

# Procedures the fork skips because they take a `va_list`.
removed="exception_new_vprintf exception_new_with_name_vprintf"

# Link names that mark a va_list procedure, wherever it comes from.
valist_re='_valist|_va_list|vprintf|vsnprintf|vsprintf|vasprintf|_vfprintf|_logv|_vscanf'

# `proc name, parameter` lines: parameters the C headers pass as one `T *`, which `parameters: declared`
# types `^T` (`^^T` for an out-parameter). A line is a failure when it is `[^]` again.
corrected='
class_add_constructor, jsc_class
class_add_constructor_variadic, jsc_class
class_add_constructorv, jsc_class
class_add_method, jsc_class
class_add_method_variadic, jsc_class
class_add_methodv, jsc_class
class_add_property, jsc_class
class_get_name, jsc_class
class_get_parent, jsc_class
context_evaluate_in_object, object_class
context_menu_new_with_items, items
context_register_class, parent_class
cookie_manager_replace_cookies, cookies
form_submission_request_list_text_fields, field_names
form_submission_request_list_text_fields, field_values
input_method_context_get_preedit, underlines
memory_pressure_settings_copy, settings
memory_pressure_settings_free, settings
memory_pressure_settings_get_conservative_threshold, settings
memory_pressure_settings_get_kill_threshold, settings
memory_pressure_settings_get_memory_limit, settings
memory_pressure_settings_get_poll_interval, settings
memory_pressure_settings_get_strict_threshold, settings
memory_pressure_settings_set_conservative_threshold, settings
memory_pressure_settings_set_kill_threshold, settings
memory_pressure_settings_set_memory_limit, settings
memory_pressure_settings_set_poll_interval, settings
memory_pressure_settings_set_strict_threshold, settings
network_proxy_settings_add_proxy_for_scheme, proxy_settings
network_proxy_settings_copy, proxy_settings
network_proxy_settings_free, proxy_settings
network_session_set_memory_pressure_settings, settings
network_session_set_proxy_settings, proxy_settings
policy_decision_use_with_policies, policies
print_operation_set_print_settings, print_settings
settings_apply_from_key_file, settings
settings_get_allow_file_access_from_file_urls, settings
settings_get_allow_modal_dialogs, settings
settings_get_allow_top_navigation_to_data_urls, settings
settings_get_allow_universal_access_from_file_urls, settings
settings_get_auto_load_images, settings
settings_get_cursive_font_family, settings
settings_get_default_charset, settings
settings_get_default_font_family, settings
settings_get_default_font_size, settings
settings_get_default_monospace_font_size, settings
settings_get_disable_web_security, settings
settings_get_draw_compositing_indicators, settings
settings_get_enable_2d_canvas_acceleration, settings
settings_get_enable_back_forward_navigation_gestures, settings
settings_get_enable_caret_browsing, settings
settings_get_enable_developer_extras, settings
settings_get_enable_dns_prefetching, settings
settings_get_enable_encrypted_media, settings
settings_get_enable_fullscreen, settings
settings_get_enable_html5_database, settings
settings_get_enable_html5_local_storage, settings
settings_get_enable_hyperlink_auditing, settings
settings_get_enable_javascript_markup, settings
settings_get_enable_javascript, settings
settings_get_enable_media_capabilities, settings
settings_get_enable_media, settings
settings_get_enable_mediasource, settings
settings_get_enable_media_stream, settings
settings_get_enable_mock_capture_devices, settings
settings_get_enable_offline_web_application_cache, settings
settings_get_enable_page_cache, settings
settings_get_enable_resizable_text_areas, settings
settings_get_enable_site_specific_quirks, settings
settings_get_enable_smooth_scrolling, settings
settings_get_enable_spatial_navigation, settings
settings_get_enable_tabs_to_links, settings
settings_get_enable_webaudio, settings
settings_get_enable_webgl, settings
settings_get_enable_webrtc, settings
settings_get_enable_write_console_messages_to_stdout, settings
settings_get_fantasy_font_family, settings
settings_get_feature_enabled, settings
settings_get_hardware_acceleration_policy, settings
settings_get_javascript_can_access_clipboard, settings
settings_get_javascript_can_open_windows_automatically, settings
settings_get_load_icons_ignoring_image_load_setting, settings
settings_get_math_font_family, settings
settings_get_media_content_types_requiring_hardware_support, settings
settings_get_media_playback_allows_inline, settings
settings_get_media_playback_requires_user_gesture, settings
settings_get_minimum_font_size, settings
settings_get_monospace_font_family, settings
settings_get_pictograph_font_family, settings
settings_get_print_backgrounds, settings
settings_get_sans_serif_font_family, settings
settings_get_serif_font_family, settings
settings_get_user_agent, settings
settings_get_webrtc_udp_ports_range, settings
settings_get_zoom_text_only, settings
settings_set_allow_file_access_from_file_urls, settings
settings_set_allow_modal_dialogs, settings
settings_set_allow_top_navigation_to_data_urls, settings
settings_set_allow_universal_access_from_file_urls, settings
settings_set_auto_load_images, settings
settings_set_cursive_font_family, settings
settings_set_default_charset, settings
settings_set_default_font_family, settings
settings_set_default_font_size, settings
settings_set_default_monospace_font_size, settings
settings_set_disable_web_security, settings
settings_set_draw_compositing_indicators, settings
settings_set_enable_2d_canvas_acceleration, settings
settings_set_enable_back_forward_navigation_gestures, settings
settings_set_enable_caret_browsing, settings
settings_set_enable_developer_extras, settings
settings_set_enable_dns_prefetching, settings
settings_set_enable_encrypted_media, settings
settings_set_enable_fullscreen, settings
settings_set_enable_html5_database, settings
settings_set_enable_html5_local_storage, settings
settings_set_enable_hyperlink_auditing, settings
settings_set_enable_javascript_markup, settings
settings_set_enable_javascript, settings
settings_set_enable_media_capabilities, settings
settings_set_enable_media, settings
settings_set_enable_mediasource, settings
settings_set_enable_media_stream, settings
settings_set_enable_mock_capture_devices, settings
settings_set_enable_offline_web_application_cache, settings
settings_set_enable_page_cache, settings
settings_set_enable_resizable_text_areas, settings
settings_set_enable_site_specific_quirks, settings
settings_set_enable_smooth_scrolling, settings
settings_set_enable_spatial_navigation, settings
settings_set_enable_tabs_to_links, settings
settings_set_enable_webaudio, settings
settings_set_enable_webgl, settings
settings_set_enable_webrtc, settings
settings_set_enable_write_console_messages_to_stdout, settings
settings_set_fantasy_font_family, settings
settings_set_feature_enabled, settings
settings_set_hardware_acceleration_policy, settings
settings_set_javascript_can_access_clipboard, settings
settings_set_javascript_can_open_windows_automatically, settings
settings_set_load_icons_ignoring_image_load_setting, settings
settings_set_math_font_family, settings
settings_set_media_content_types_requiring_hardware_support, settings
settings_set_media_playback_allows_inline, settings
settings_set_media_playback_requires_user_gesture, settings
settings_set_minimum_font_size, settings
settings_set_monospace_font_family, settings
settings_set_pictograph_font_family, settings
settings_set_print_backgrounds, settings
settings_set_sans_serif_font_family, settings
settings_set_serif_font_family, settings
settings_set_user_agent, settings
settings_set_user_agent_with_application_details, settings
settings_set_webrtc_udp_ports_range, settings
settings_set_zoom_text_only, settings
uri_scheme_response_set_http_headers, headers
user_message_new, parameters
user_message_new_with_fd_list, parameters
value_new_object, jsc_class
value_new_string_from_bytes, bytes
web_context_initialize_notification_permissions, allowed_origins
web_context_initialize_notification_permissions, disallowed_origins
website_policies_get_autoplay_policy, policies
web_view_call_async_javascript_function, arguments
web_view_get_tls_info, errors
web_view_load_bytes, bytes
web_view_set_settings, settings
window_properties_get_fullscreen, window_properties
window_properties_get_geometry, window_properties
window_properties_get_locationbar_visible, window_properties
window_properties_get_menubar_visible, window_properties
window_properties_get_resizable, window_properties
window_properties_get_scrollbars_visible, window_properties
window_properties_get_statusbar_visible, window_properties
window_properties_get_toolbar_visible, window_properties
'

fail=0

for f in "${files[@]}"; do
    [ -f "$f" ] || { echo "check-generated: $f not found" >&2; exit 2; }
    for n in $removed; do
        if grep -Eq "^[[:space:]]+$n :: proc" "$f"; then
            echo "$f: $n is back; it takes a va_list and is bound wrongly (runic skips va_list procedures)"
            fail=1
        fi
    done
    bad=$(awk -v re="$valist_re" '
        /link_name = / { match($0, /"[^"]*"/); link = substr($0, RSTART + 1, RLENGTH - 2); next }
        /#c_vararg/ && link ~ re { print "  " link }
        /::[[:space:]]*proc/ { link = "" }
    ' "$f")
    if [ -n "$bad" ]; then
        echo "$f: #c_vararg procedures that take a va_list:"
        echo "$bad"
        fail=1
    fi
done

while IFS=', ' read -r proc param; do
    [ -n "$proc" ] || continue
    for f in "${files[@]}"; do
        if grep -Eq "^[[:space:]]+$proc :: proc\(.*[( ]$param: \[\^\]" "$f"; then
            echo "$f: $proc, $param is [^] again; the header passes one object (rune.yml parameters: declared; list real arrays under arrays:)"
            fail=1
        fi
    done
done <<<"$corrected"

# Parameters typed `[^]^T` that are real arrays: a pointer and a count, or an out-array. Any
# other `[^]^T` parameter is a `T **` out-parameter of one pointer, which runic mistypes and
# `parameters: declared` types `^^T`. Read the header and the `(out)` / `(array)`
# annotations before adding a line here.
arrays='
value_object_invoke_methodv, parameters
value_function_callv, parameters
value_constructor_callv, parameters
'

for f in "${files[@]}"; do
    out=$(ARRAYS="$arrays" perl -ne '
        BEGIN { for (split /\n/, $ENV{ARRAYS}) { next unless /\S/; my ($p, $a) = split /,\s*/; $ok{"$p, $a"} = 1 } }
        if (/^\s*(\w+) :: proc\b.*?\((.*)\)/) {
            my ($n, $args) = ($1, $2);
            while ($args =~ /\b(\w+): \[\^\]\^/g) {
                print "$ARGV:$.: $n, $1 is [^]^T and not a listed array; a T ** out-parameter of one pointer is ^^T (rune.yml parameters: declared; list real arrays under arrays:)\n" unless $ok{"$n, $1"};
            }
        }
    ' "$f")
    if [ -n "$out" ]; then echo "$out"; fail=1; fi
done

if [ "$fail" -ne 0 ]; then
    echo "check-generated: runic's output regressed; fix rune.yml (detect.arrays) and run make generate"
    exit 1
fi
echo "check-generated: ok"
