package webkit

import glib "glib:glib"
import gio "glib:gio"
import gobj "glib:gobject"
import gtk "gtk4:gtk4"
import soup "soup:soup"

// One typed pin per post-generation rule (docs/PATCHED.md). A regeneration that drops or
// changes a rewritten declaration fails to compile here.

// gchar * is cstring, not ^char.
@(private)
patched_uri_request_get_uri: proc "c" (_: ^URIRequest) -> cstring = uri_request_get_uri

// TYPE_FOO names the foo_get_type procedure.
@(private)
patched_type_web_view: proc "c" () -> gobj.Type = TYPE_WEB_VIEW

// FOO_ERROR names the foo_error_quark procedure.
@(private)
patched_network_error: proc "c" () -> glib.Quark = NETWORK_ERROR

// The version macros are integers, not backtick strings.
@(private)
patched_major_version: int = MAJOR_VERSION

// One pin per `[^]T` parameter corrected to `^T` (docs/PATCHED.md, `single_params`): the C header
// passes one `T *`, not the array runic writes for a name ending in "s".

@(private = "file")
patched_context_menu_new_with_items: proc "c" (_: ^glib.List) -> ^ContextMenu = context_menu_new_with_items

@(private = "file")
patched_cookie_manager_replace_cookies: proc "c" (_: ^CookieManager, _: ^glib.List, _: ^gio.Cancellable, _: gio.AsyncReadyCallback, _: glib.pointer) = cookie_manager_replace_cookies

@(private = "file")
patched_form_submission_request_list_text_fields: proc "c" (_: ^FormSubmissionRequest, _: ^^glib.PtrArray, _: ^^glib.PtrArray) -> glib.boolean = form_submission_request_list_text_fields

@(private = "file")
patched_input_method_context_get_preedit: proc "c" (_: ^InputMethodContext, _: ^cstring, _: ^^glib.List, _: ^glib.uint_) = input_method_context_get_preedit

@(private = "file")
patched_memory_pressure_settings_copy: proc "c" (_: ^MemoryPressureSettings) -> ^MemoryPressureSettings = memory_pressure_settings_copy

@(private = "file")
patched_network_proxy_settings_add_proxy_for_scheme: proc "c" (_: ^NetworkProxySettings, _: cstring, _: cstring) = network_proxy_settings_add_proxy_for_scheme

@(private = "file")
patched_policy_decision_use_with_policies: proc "c" (_: ^PolicyDecision, _: ^WebsitePolicies) = policy_decision_use_with_policies

@(private = "file")
patched_print_operation_set_print_settings: proc "c" (_: ^PrintOperation, _: ^gtk.PrintSettings) = print_operation_set_print_settings

@(private = "file")
patched_settings_apply_from_key_file: proc "c" (_: ^Settings, _: ^glib.KeyFile, _: cstring, _: ^^glib.Error) -> glib.boolean = settings_apply_from_key_file

@(private = "file")
patched_uri_scheme_response_set_http_headers: proc "c" (_: ^URISchemeResponse, _: ^soup.MessageHeaders) = uri_scheme_response_set_http_headers

@(private = "file")
patched_user_message_new: proc "c" (_: cstring, _: ^glib.Variant) -> ^UserMessage = user_message_new

@(private = "file")
patched_web_context_initialize_notification_permissions: proc "c" (_: ^WebContext, _: ^glib.List, _: ^glib.List) = web_context_initialize_notification_permissions

@(private = "file")
patched_web_view_call_async_javascript_function: proc "c" (_: ^WebView, _: cstring, _: glib.ssize, _: ^glib.Variant, _: cstring, _: cstring, _: ^gio.Cancellable, _: gio.AsyncReadyCallback, _: glib.pointer) = web_view_call_async_javascript_function

@(private = "file")
patched_web_view_get_tls_info: proc "c" (_: ^WebView, _: ^^gio.TlsCertificate, _: ^gio.TlsCertificateFlags) -> glib.boolean = web_view_get_tls_info

@(private = "file")
patched_web_view_load_bytes: proc "c" (_: ^WebView, _: ^glib.Bytes, _: cstring, _: cstring, _: cstring) = web_view_load_bytes

@(private = "file")
patched_window_properties_get_fullscreen: proc "c" (_: ^WindowProperties) -> glib.boolean = window_properties_get_fullscreen
