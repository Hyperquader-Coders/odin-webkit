package webkit

import gio "glib:gio"
import glib "glib:glib"
import gobj "glib:gobject"
import gtk "gtk4:gtk4"
import jsc "webkit:javascriptcore"
import soup "soup:soup"

TYPE_APPLICATION_INFO :: application_info_get_type
TYPE_CREDENTIAL :: credential_get_type
TYPE_SECURITY_ORIGIN :: security_origin_get_type
TYPE_AUTHENTICATION_REQUEST :: authentication_request_get_type
TYPE_AUTOMATION_SESSION :: automation_session_get_type
TYPE_BACK_FORWARD_LIST_ITEM :: back_forward_list_item_get_type
TYPE_BACK_FORWARD_LIST :: back_forward_list_get_type
TYPE_CLIPBOARD_PERMISSION_REQUEST :: clipboard_permission_request_get_type
TYPE_COLOR_CHOOSER_REQUEST :: color_chooser_request_get_type
TYPE_CONTEXT_MENU :: context_menu_get_type
TYPE_CONTEXT_MENU_ITEM :: context_menu_item_get_type
TYPE_COOKIE_MANAGER :: cookie_manager_get_type
TYPE_DEVICE_INFO_PERMISSION_REQUEST :: device_info_permission_request_get_type
TYPE_URI_REQUEST :: uri_request_get_type
TYPE_URI_RESPONSE :: uri_response_get_type
TYPE_DOWNLOAD :: download_get_type
EDITING_COMMAND_CUT :: "Cut"
EDITING_COMMAND_COPY :: "Copy"
EDITING_COMMAND_PASTE :: "Paste"
EDITING_COMMAND_PASTE_AS_PLAIN_TEXT :: "PasteAsPlainText"
EDITING_COMMAND_SELECT_ALL :: "SelectAll"
EDITING_COMMAND_UNDO :: "Undo"
EDITING_COMMAND_REDO :: "Redo"
EDITING_COMMAND_INSERT_IMAGE :: "InsertImage"
EDITING_COMMAND_CREATE_LINK :: "CreateLink"
TYPE_EDITOR_STATE :: editor_state_get_type
TYPE_AUTHENTICATION_SCHEME :: authentication_scheme_get_type
TYPE_AUTOMATION_BROWSING_CONTEXT_PRESENTATION :: automation_browsing_context_presentation_get_type
TYPE_CONTEXT_MENU_ACTION :: context_menu_action_get_type
TYPE_COOKIE_PERSISTENT_STORAGE :: cookie_persistent_storage_get_type
TYPE_COOKIE_ACCEPT_POLICY :: cookie_accept_policy_get_type
TYPE_CREDENTIAL_PERSISTENCE :: credential_persistence_get_type
TYPE_EDITOR_TYPING_ATTRIBUTES :: editor_typing_attributes_get_type
TYPE_NETWORK_ERROR :: network_error_get_type
TYPE_POLICY_ERROR :: policy_error_get_type
TYPE_DOWNLOAD_ERROR :: download_error_get_type
TYPE_PRINT_ERROR :: print_error_get_type
TYPE_JAVASCRIPT_ERROR :: javascript_error_get_type
TYPE_SNAPSHOT_ERROR :: snapshot_error_get_type
TYPE_WEB_EXTENSION_ERROR :: web_extension_error_get_type
TYPE_WEB_EXTENSION_MATCH_PATTERN_ERROR :: web_extension_match_pattern_error_get_type
TYPE_USER_CONTENT_FILTER_ERROR :: user_content_filter_error_get_type
TYPE_MEDIA_ERROR :: media_error_get_type
TYPE_FAVICON_DATABASE_ERROR :: favicon_database_error_get_type
TYPE_FEATURE_STATUS :: feature_status_get_type
TYPE_FIND_OPTIONS :: find_options_get_type
TYPE_HIT_TEST_RESULT_CONTEXT :: hit_test_result_context_get_type
TYPE_INPUT_PURPOSE :: input_purpose_get_type
TYPE_INPUT_HINTS :: input_hints_get_type
TYPE_NAVIGATION_TYPE :: navigation_type_get_type
TYPE_NETWORK_PROXY_MODE :: network_proxy_mode_get_type
TYPE_PERMISSION_STATE :: permission_state_get_type
TYPE_PRINT_OPERATION_RESPONSE :: print_operation_response_get_type
TYPE_SCRIPT_DIALOG_TYPE :: script_dialog_type_get_type
TYPE_HARDWARE_ACCELERATION_POLICY :: hardware_acceleration_policy_get_type
TYPE_USER_CONTENT_INJECTED_FRAMES :: user_content_injected_frames_get_type
TYPE_USER_STYLE_LEVEL :: user_style_level_get_type
TYPE_USER_SCRIPT_INJECTION_TIME :: user_script_injection_time_get_type
TYPE_USER_MESSAGE_ERROR :: user_message_error_get_type
TYPE_CACHE_MODEL :: cache_model_get_type
TYPE_WEB_EXTENSION_MATCH_PATTERN_OPTIONS :: web_extension_match_pattern_options_get_type
TYPE_POLICY_DECISION_TYPE :: policy_decision_type_get_type
TYPE_LOAD_EVENT :: load_event_get_type
TYPE_SAVE_MODE :: save_mode_get_type
TYPE_INSECURE_CONTENT_EVENT :: insecure_content_event_get_type
TYPE_SNAPSHOT_OPTIONS :: snapshot_options_get_type
TYPE_SNAPSHOT_REGION :: snapshot_region_get_type
TYPE_WEB_PROCESS_TERMINATION_REASON :: web_process_termination_reason_get_type
TYPE_MEDIA_CAPTURE_STATE :: media_capture_state_get_type
TYPE_WEB_EXTENSION_MODE :: web_extension_mode_get_type
TYPE_WEBSITE_DATA_TYPES :: website_data_types_get_type
TYPE_TLS_ERRORS_POLICY :: tls_errors_policy_get_type
TYPE_AUTOPLAY_POLICY :: autoplay_policy_get_type
TYPE_XR_SESSION_MODE :: xr_session_mode_get_type
TYPE_XR_SESSION_FEATURES :: xr_session_features_get_type
NETWORK_ERROR :: network_error_quark
POLICY_ERROR :: policy_error_quark
DOWNLOAD_ERROR :: download_error_quark
JAVASCRIPT_ERROR :: javascript_error_quark
SNAPSHOT_ERROR :: snapshot_error_quark
USER_CONTENT_FILTER_ERROR :: user_content_filter_error_quark
WEB_EXTENSION_ERROR :: web_extension_error_quark
WEB_EXTENSION_MATCH_PATTERN_ERROR :: web_extension_match_pattern_error_quark
PRINT_ERROR :: print_error_quark
MEDIA_ERROR :: media_error_quark
FAVICON_DATABASE_ERROR :: favicon_database_error_quark
TYPE_FAVICON_DATABASE :: favicon_database_get_type
TYPE_FEATURE :: feature_get_type
TYPE_FEATURE_LIST :: feature_list_get_type
TYPE_FILE_CHOOSER_REQUEST :: file_chooser_request_get_type
TYPE_FIND_CONTROLLER :: find_controller_get_type
TYPE_FORM_SUBMISSION_REQUEST :: form_submission_request_get_type
TYPE_GEOLOCATION_MANAGER :: geolocation_manager_get_type
TYPE_GEOLOCATION_POSITION :: geolocation_position_get_type
TYPE_GEOLOCATION_PERMISSION_REQUEST :: geolocation_permission_request_get_type
TYPE_HIT_TEST_RESULT :: hit_test_result_get_type
TYPE_INPUT_METHOD_UNDERLINE :: input_method_underline_get_type
TYPE_INPUT_METHOD_CONTEXT :: input_method_context_get_type
TYPE_MEDIA_KEY_SYSTEM_PERMISSION_REQUEST :: media_key_system_permission_request_get_type
TYPE_MEMORY_PRESSURE_SETTINGS :: memory_pressure_settings_get_type
TYPE_NAVIGATION_ACTION :: navigation_action_get_type
TYPE_WEBSITE_POLICIES :: website_policies_get_type
TYPE_POLICY_DECISION :: policy_decision_get_type
TYPE_NAVIGATION_POLICY_DECISION :: navigation_policy_decision_get_type
TYPE_NETWORK_NETWORK_PROXY_SETTINGS :: network_proxy_settings_get_type
TYPE_WEBSITE_DATA :: website_data_get_type
TYPE_WEBSITE_DATA_MANAGER :: website_data_manager_get_type
TYPE_ITP_FIRST_PARTY :: itp_first_party_get_type
TYPE_ITP_THIRD_PARTY :: itp_third_party_get_type
TYPE_NETWORK_SESSION :: network_session_get_type
TYPE_NOTIFICATION :: notification_get_type
TYPE_NOTIFICATION_PERMISSION_REQUEST :: notification_permission_request_get_type
TYPE_OPTION_MENU_ITEM :: option_menu_item_get_type
TYPE_OPTION_MENU :: option_menu_get_type
TYPE_PERMISSION_REQUEST :: permission_request_get_type
TYPE_PERMISSION_STATE_QUERY :: permission_state_query_get_type
TYPE_POINTER_LOCK_PERMISSION_REQUEST :: pointer_lock_permission_request_get_type
TYPE_SCRIPT_DIALOG :: script_dialog_get_type
TYPE_SETTINGS :: settings_get_type
TYPE_USER_STYLE_SHEET :: user_style_sheet_get_type
TYPE_USER_SCRIPT :: user_script_get_type
TYPE_USER_CONTENT_FILTER :: user_content_filter_get_type
TYPE_USER_CONTENT_MANAGER :: user_content_manager_get_type
TYPE_SCRIPT_MESSAGE_REPLY :: script_message_reply_get_type
TYPE_USER_MESSAGE :: user_message_get_type
USER_MESSAGE_ERROR :: user_message_error_quark
TYPE_SECURITY_MANAGER :: security_manager_get_type
TYPE_URI_SCHEME_RESPONSE :: uri_scheme_response_get_type
TYPE_URI_SCHEME_REQUEST :: uri_scheme_request_get_type
TYPE_WEB_CONTEXT :: web_context_get_type
TYPE_WEB_RESOURCE :: web_resource_get_type
TYPE_WEB_VIEW_SESSION_STATE :: web_view_session_state_get_type
TYPE_WINDOW_PROPERTIES :: window_properties_get_type
TYPE_WEB_VIEW_BASE :: web_view_base_get_type
TYPE_WEB_INSPECTOR :: web_inspector_get_type
TYPE_WEB_VIEW :: web_view_get_type
TYPE_PRINT_OPERATION :: print_operation_get_type
TYPE_RESPONSE_POLICY_DECISION :: response_policy_decision_get_type
TYPE_USER_CONTENT_FILTER_STORE :: user_content_filter_store_get_type
TYPE_USER_MEDIA_PERMISSION_REQUEST :: user_media_permission_request_get_type
MAJOR_VERSION :: 2
MINOR_VERSION :: 52
MICRO_VERSION :: 6
TYPE_WEB_EXTENSION_MATCH_PATTERN :: web_extension_match_pattern_get_type
TYPE_WEB_EXTENSION :: web_extension_get_type
TYPE_WEBSITE_DATA_ACCESS_PERMISSION_REQUEST :: website_data_access_permission_request_get_type
TYPE_XR_PERMISSION_REQUEST :: xr_permission_request_get_type

ApplicationInfo :: struct #packed {}

Credential :: struct #packed {}

CredentialPersistence :: enum u32 {NONE = 0, FOR_SESSION = 1, PERMANENT = 2 }
SecurityOrigin :: struct #packed {}

AuthenticationRequest :: struct #packed {}

AuthenticationRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
AuthenticationScheme :: enum u32 {DEFAULT = 1, HTTP_BASIC = 2, HTTP_DIGEST = 3, HTML_FORM = 4, NTLM = 5, NEGOTIATE = 6, CLIENT_CERTIFICATE_REQUESTED = 7, SERVER_TRUST_EVALUATION_REQUESTED = 8, CLIENT_CERTIFICATE_PIN_REQUESTED = 9, UNKNOWN = 100 }
AutomationSession :: struct #packed {}

AutomationSessionClass :: struct {
    parent_class: gobj.ObjectClass,
}
AutomationBrowsingContextPresentation :: enum u32 {WINDOW = 0, TAB = 1 }
BackForwardListItem :: struct #packed {}

BackForwardListItemClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
}
BackForwardList :: struct #packed {}

BackForwardListClass :: struct {
    parent_class: gobj.ObjectClass,
}
ClipboardPermissionRequest :: struct #packed {}

ClipboardPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
ColorChooserRequest :: struct #packed {}

ColorChooserRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
ContextMenu :: struct #packed {}

ContextMenuClass :: struct {
    parent_class: gobj.ObjectClass,
}
ContextMenuItem :: struct #packed {}

ContextMenuAction :: enum u32 {NO_ACTION = 0, OPEN_LINK = 1, OPEN_LINK_IN_NEW_WINDOW = 2, DOWNLOAD_LINK_TO_DISK = 3, COPY_LINK_TO_CLIPBOARD = 4, OPEN_IMAGE_IN_NEW_WINDOW = 5, DOWNLOAD_IMAGE_TO_DISK = 6, COPY_IMAGE_TO_CLIPBOARD = 7, COPY_IMAGE_URL_TO_CLIPBOARD = 8, OPEN_FRAME_IN_NEW_WINDOW = 9, GO_BACK = 10, GO_FORWARD = 11, STOP = 12, RELOAD = 13, COPY = 14, CUT = 15, PASTE = 16, DELETE = 17, SELECT_ALL = 18, INPUT_METHODS = 19, UNICODE = 20, SPELLING_GUESS = 21, NO_GUESSES_FOUND = 22, IGNORE_SPELLING = 23, LEARN_SPELLING = 24, IGNORE_GRAMMAR = 25, FONT_MENU = 26, BOLD = 27, ITALIC = 28, UNDERLINE = 29, OUTLINE = 30, INSPECT_ELEMENT = 31, OPEN_VIDEO_IN_NEW_WINDOW = 32, OPEN_AUDIO_IN_NEW_WINDOW = 33, COPY_VIDEO_LINK_TO_CLIPBOARD = 34, COPY_AUDIO_LINK_TO_CLIPBOARD = 35, TOGGLE_MEDIA_CONTROLS = 36, TOGGLE_MEDIA_LOOP = 37, ENTER_VIDEO_FULLSCREEN = 38, MEDIA_PLAY = 39, MEDIA_PAUSE = 40, MEDIA_MUTE = 41, DOWNLOAD_VIDEO_TO_DISK = 42, DOWNLOAD_AUDIO_TO_DISK = 43, INSERT_EMOJI = 44, PASTE_AS_PLAIN_TEXT = 45, CUSTOM = 10000 }
ContextMenuItemClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
}
CookieManager :: struct #packed {}

CookieManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
CookiePersistentStorage :: enum u32 {TEXT = 0, SQLITE = 1 }
CookieAcceptPolicy :: enum u32 {COOKIE_POLICY_ACCEPT_ALWAYS = 0, COOKIE_POLICY_ACCEPT_NEVER = 1, COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY = 2 }
DeviceInfoPermissionRequest :: struct #packed {}

DeviceInfoPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
URIRequest :: struct #packed {}

URIRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
URIResponse :: struct #packed {}

URIResponseClass :: struct {
    parent_class: gobj.ObjectClass,
}
Download :: struct #packed {}

DownloadClass :: struct {
    parent_class: gobj.ObjectClass,
}
WebViewBasePrivate :: struct #packed {}

WebViewBase :: struct {
    parent_instance: gtk.Widget,
    priv: ^WebViewBasePrivate,
}

WebViewPrivate :: struct #packed {}

WebView :: struct {
    parent_instance: WebViewBase,
    priv: ^WebViewPrivate,
}

EditorState :: struct #packed {}

EditorStateClass :: struct {
    parent_class: gobj.ObjectClass,
}
EditorTypingAttributesBit :: enum u32 {EDITOR_TYPING_ATTRIBUTE_NONE = 1, EDITOR_TYPING_ATTRIBUTE_BOLD = 2, EDITOR_TYPING_ATTRIBUTE_ITALIC = 3, EDITOR_TYPING_ATTRIBUTE_UNDERLINE = 4, EDITOR_TYPING_ATTRIBUTE_STRIKETHROUGH = 5}
EditorTypingAttributes :: bit_set[EditorTypingAttributesBit; u32]
NetworkError :: enum u32 {FAILED = 399, TRANSPORT = 300, UNKNOWN_PROTOCOL = 301, CANCELLED = 302, FILE_DOES_NOT_EXIST = 303 }
PolicyError :: enum u32 {FAILED = 199, CANNOT_SHOW_MIME_TYPE = 100, CANNOT_SHOW_URI = 101, FRAME_LOAD_INTERRUPTED_BY_POLICY_CHANGE = 102, CANNOT_USE_RESTRICTED_PORT = 103 }
DownloadError :: enum u32 {NETWORK = 499, CANCELLED_BY_USER = 400, DESTINATION = 401 }
PrintError :: enum u32 {GENERAL = 599, PRINTER_NOT_FOUND = 500, INVALID_PAGE_RANGE = 501 }
JavascriptError :: enum u32 {SCRIPT_FAILED = 699, INVALID_PARAMETER = 600, INVALID_RESULT = 601 }
SnapshotError :: enum u32 {FAILED_TO_CREATE = 799 }
WebExtensionError :: enum u32 {UNKNOWN = 899, RESOURCE_NOT_FOUND = 800, INVALID_RESOURCE_CODE_SIGNATURE = 801, INVALID_MANIFEST = 802, UNSUPPORTED_MANIFEST_VERSION = 803, INVALID_MANIFEST_ENTRY = 804, INVALID_DECLARATIVE_NET_REQUEST_ENTRY = 805, INVALID_BACKGROUND_PERSISTENCE = 806, INVALID_ARCHIVE = 807 }
WebExtensionMatchPatternError :: enum u32 {UNKNOWN = 899, INVALID_SCHEME = 808, INVALID_HOST = 809, INVALID_PATH = 810 }
UserContentFilterError :: enum u32 {INVALID_SOURCE = 0, NOT_FOUND = 1 }
MediaError :: enum u32 {WILL_HANDLE_LOAD = 204 }
FaviconDatabase :: struct #packed {}

FaviconDatabaseClass :: struct {
    parent_class: gobj.ObjectClass,
}
FaviconDatabaseError :: enum u32 {NOT_INITIALIZED = 0, FAVICON_NOT_FOUND = 1, FAVICON_UNKNOWN = 2 }
FeatureStatus :: enum u32 {EMBEDDER = 0, UNSTABLE = 1, INTERNAL = 2, DEVELOPER = 3, TESTABLE = 4, PREVIEW = 5, STABLE = 6, MATURE = 7 }
Feature :: struct #packed {}

FeatureList :: struct #packed {}

FileChooserRequest :: struct #packed {}

FileChooserRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
FindController :: struct #packed {}

FindControllerClass :: struct {
    parent_class: gobj.ObjectClass,
}
FindOptionsBit :: enum u32 {CASE_INSENSITIVE = 0, AT_WORD_STARTS = 1, TREAT_MEDIAL_CAPITAL_AS_WORD_START = 2, BACKWARDS = 3, WRAP_AROUND = 4}
FindOptions :: bit_set[FindOptionsBit; u32]
FIND_OPTIONS_NONE :: FindOptions{}
FormSubmissionRequest :: struct #packed {}

FormSubmissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
GeolocationManager :: struct #packed {}
eolocationManager :: GeolocationManager
eolocationManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
GeolocationPosition :: struct #packed {}
eolocationPosition :: GeolocationPosition
GeolocationPermissionRequest :: struct #packed {}
eolocationPermissionRequest :: GeolocationPermissionRequest
eolocationPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
HitTestResult :: struct #packed {}

HitTestResultClass :: struct {
    parent_class: gobj.ObjectClass,
}
HitTestResultContextBit :: enum u32 {DOCUMENT = 1, LINK = 2, IMAGE = 3, MEDIA = 4, EDITABLE = 5, SCROLLBAR = 6, SELECTION = 7}
HitTestResultContext :: bit_set[HitTestResultContextBit; u32]
InputMethodContextPrivate :: struct #packed {}

InputMethodContext :: struct {
    parent_instance: gobj.Object,
    priv: ^InputMethodContextPrivate,
}

preedit_started_func_ptr_anon_0 :: #type proc "c" (context_p: ^InputMethodContext)
preedit_changed_func_ptr_anon_1 :: #type proc "c" (context_p: ^InputMethodContext)
preedit_finished_func_ptr_anon_2 :: #type proc "c" (context_p: ^InputMethodContext)
committed_func_ptr_anon_3 :: #type proc "c" (context_p: ^InputMethodContext, text: cstring)
delete_surrounding_func_ptr_anon_4 :: #type proc "c" (context_p: ^InputMethodContext, offset: i32, n_chars: glib.uint_)
set_enable_preedit_func_ptr_anon_5 :: #type proc "c" (context_p: ^InputMethodContext, enabled: glib.boolean)
et_preedit_func_ptr_anon_6 :: #type proc "c" (context_p: ^InputMethodContext, text: ^cstring, underlines: ^^glib.List, cursor_offset: ^glib.uint_)
filter_key_event_func_ptr_anon_7 :: #type proc "c" (context_p: ^InputMethodContext, key_event: ^gtk.Event) -> glib.boolean
notify_focus_in_func_ptr_anon_8 :: #type proc "c" (context_p: ^InputMethodContext)
notify_focus_out_func_ptr_anon_9 :: #type proc "c" (context_p: ^InputMethodContext)
notify_cursor_area_func_ptr_anon_10 :: #type proc "c" (context_p: ^InputMethodContext, x: i32, y: i32, width: i32, height: i32)
notify_surrounding_func_ptr_anon_11 :: #type proc "c" (context_p: ^InputMethodContext, text: cstring, length: glib.uint_, cursor_index: glib.uint_, selection_index: glib.uint_)
reset_func_ptr_anon_12 :: #type proc "c" (context_p: ^InputMethodContext)
_webkit_reserved0_func_ptr_anon_13 :: #type proc "c" ()
_webkit_reserved1_func_ptr_anon_14 :: #type proc "c" ()
_webkit_reserved2_func_ptr_anon_15 :: #type proc "c" ()
_webkit_reserved3_func_ptr_anon_16 :: #type proc "c" ()
_webkit_reserved4_func_ptr_anon_17 :: #type proc "c" ()
_webkit_reserved5_func_ptr_anon_18 :: #type proc "c" ()
_webkit_reserved6_func_ptr_anon_19 :: #type proc "c" ()
_webkit_reserved7_func_ptr_anon_20 :: #type proc "c" ()
_webkit_reserved8_func_ptr_anon_21 :: #type proc "c" ()
_webkit_reserved9_func_ptr_anon_22 :: #type proc "c" ()
_webkit_reserved10_func_ptr_anon_23 :: #type proc "c" ()
_webkit_reserved11_func_ptr_anon_24 :: #type proc "c" ()
_webkit_reserved12_func_ptr_anon_25 :: #type proc "c" ()
_webkit_reserved13_func_ptr_anon_26 :: #type proc "c" ()
_webkit_reserved14_func_ptr_anon_27 :: #type proc "c" ()
_webkit_reserved15_func_ptr_anon_28 :: #type proc "c" ()
InputMethodContextClass :: struct {
    parent_class: gobj.ObjectClass,
    preedit_started: preedit_started_func_ptr_anon_0,
    preedit_changed: preedit_changed_func_ptr_anon_1,
    preedit_finished: preedit_finished_func_ptr_anon_2,
    committed: committed_func_ptr_anon_3,
    delete_surrounding: delete_surrounding_func_ptr_anon_4,
    set_enable_preedit: set_enable_preedit_func_ptr_anon_5,
    get_preedit: et_preedit_func_ptr_anon_6,
    filter_key_event: filter_key_event_func_ptr_anon_7,
    notify_focus_in: notify_focus_in_func_ptr_anon_8,
    notify_focus_out: notify_focus_out_func_ptr_anon_9,
    notify_cursor_area: notify_cursor_area_func_ptr_anon_10,
    notify_surrounding: notify_surrounding_func_ptr_anon_11,
    reset: reset_func_ptr_anon_12,
    _webkit_reserved0: _webkit_reserved0_func_ptr_anon_13,
    _webkit_reserved1: _webkit_reserved1_func_ptr_anon_14,
    _webkit_reserved2: _webkit_reserved2_func_ptr_anon_15,
    _webkit_reserved3: _webkit_reserved3_func_ptr_anon_16,
    _webkit_reserved4: _webkit_reserved4_func_ptr_anon_17,
    _webkit_reserved5: _webkit_reserved5_func_ptr_anon_18,
    _webkit_reserved6: _webkit_reserved6_func_ptr_anon_19,
    _webkit_reserved7: _webkit_reserved7_func_ptr_anon_20,
    _webkit_reserved8: _webkit_reserved8_func_ptr_anon_21,
    _webkit_reserved9: _webkit_reserved9_func_ptr_anon_22,
    _webkit_reserved10: _webkit_reserved10_func_ptr_anon_23,
    _webkit_reserved11: _webkit_reserved11_func_ptr_anon_24,
    _webkit_reserved12: _webkit_reserved12_func_ptr_anon_25,
    _webkit_reserved13: _webkit_reserved13_func_ptr_anon_26,
    _webkit_reserved14: _webkit_reserved14_func_ptr_anon_27,
    _webkit_reserved15: _webkit_reserved15_func_ptr_anon_28,
}

InputPurpose :: enum u32 {FREE_FORM = 0, DIGITS = 1, NUMBER = 2, PHONE = 3, URL = 4, EMAIL = 5, PASSWORD = 6 }
InputHintsBit :: enum u32 {INPUT_HINT_SPELLCHECK = 0, INPUT_HINT_LOWERCASE = 1, INPUT_HINT_UPPERCASE_CHARS = 2, INPUT_HINT_UPPERCASE_WORDS = 3, INPUT_HINT_UPPERCASE_SENTENCES = 4, INPUT_HINT_INHIBIT_OSK = 5}
InputHints :: bit_set[InputHintsBit; u32]
INPUT_HINT_NONE :: InputHints{}
InputMethodUnderline :: struct #packed {}

MediaKeySystemPermissionRequest :: struct #packed {}

MediaKeySystemPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
MemoryPressureSettings :: struct #packed {}

NavigationType :: enum u32 {LINK_CLICKED = 0, FORM_SUBMITTED = 1, BACK_FORWARD = 2, RELOAD = 3, FORM_RESUBMITTED = 4, OTHER = 5 }
NavigationAction :: struct #packed {}

WebsitePolicies :: struct #packed {}

WebsitePoliciesClass :: struct {
    parent_class: gobj.ObjectClass,
}
AutoplayPolicy :: enum u32 {AUTOPLAY_ALLOW = 0, AUTOPLAY_ALLOW_WITHOUT_SOUND = 1, AUTOPLAY_DENY = 2 }
PolicyDecisionPrivate :: struct #packed {}

PolicyDecision :: struct {
    parent_instance: gobj.Object,
    priv: ^PolicyDecisionPrivate,
}

_webkit_reserved0_func_ptr_anon_29 :: #type proc "c" ()
_webkit_reserved1_func_ptr_anon_30 :: #type proc "c" ()
_webkit_reserved2_func_ptr_anon_31 :: #type proc "c" ()
_webkit_reserved3_func_ptr_anon_32 :: #type proc "c" ()
_webkit_reserved4_func_ptr_anon_33 :: #type proc "c" ()
_webkit_reserved5_func_ptr_anon_34 :: #type proc "c" ()
_webkit_reserved6_func_ptr_anon_35 :: #type proc "c" ()
_webkit_reserved7_func_ptr_anon_36 :: #type proc "c" ()
PolicyDecisionClass :: struct {
    parent_class: gobj.ObjectClass,
    _webkit_reserved0: _webkit_reserved0_func_ptr_anon_29,
    _webkit_reserved1: _webkit_reserved1_func_ptr_anon_30,
    _webkit_reserved2: _webkit_reserved2_func_ptr_anon_31,
    _webkit_reserved3: _webkit_reserved3_func_ptr_anon_32,
    _webkit_reserved4: _webkit_reserved4_func_ptr_anon_33,
    _webkit_reserved5: _webkit_reserved5_func_ptr_anon_34,
    _webkit_reserved6: _webkit_reserved6_func_ptr_anon_35,
    _webkit_reserved7: _webkit_reserved7_func_ptr_anon_36,
}

NavigationPolicyDecision :: struct #packed {}

NavigationPolicyDecisionClass :: struct {
    parent_class: PolicyDecisionClass,
}
NetworkProxyMode :: enum u32 {DEFAULT = 0, NO_PROXY = 1, CUSTOM = 2 }
NetworkProxySettings :: struct #packed {}

WebsiteData :: struct #packed {}

WebsiteDataTypesBit :: enum u32 {WEBSITE_DATA_MEMORY_CACHE = 0, WEBSITE_DATA_DISK_CACHE = 1, WEBSITE_DATA_OFFLINE_APPLICATION_CACHE = 2, WEBSITE_DATA_SESSION_STORAGE = 3, WEBSITE_DATA_LOCAL_STORAGE = 4, WEBSITE_DATA_INDEXEDDB_DATABASES = 5, WEBSITE_DATA_COOKIES = 6, WEBSITE_DATA_DEVICE_ID_HASH_SALT = 7, WEBSITE_DATA_HSTS_CACHE = 8, WEBSITE_DATA_ITP = 9, WEBSITE_DATA_SERVICE_WORKER_REGISTRATIONS = 10, WEBSITE_DATA_DOM_CACHE = 11}
WebsiteDataTypes :: bit_set[WebsiteDataTypesBit; u32]
WEBSITE_DATA_ALL :: WebsiteDataTypes{.WEBSITE_DATA_MEMORY_CACHE, .WEBSITE_DATA_DISK_CACHE, .WEBSITE_DATA_OFFLINE_APPLICATION_CACHE, .WEBSITE_DATA_SESSION_STORAGE, .WEBSITE_DATA_LOCAL_STORAGE, .WEBSITE_DATA_INDEXEDDB_DATABASES, .WEBSITE_DATA_COOKIES, .WEBSITE_DATA_DEVICE_ID_HASH_SALT, .WEBSITE_DATA_HSTS_CACHE, .WEBSITE_DATA_ITP, .WEBSITE_DATA_SERVICE_WORKER_REGISTRATIONS, .WEBSITE_DATA_DOM_CACHE}
WebsiteDataManager :: struct #packed {}

WebsiteDataManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
TLSErrorsPolicy :: enum u32 {IGNORE = 0, FAIL = 1 }
ITPFirstParty :: struct #packed {}

ITPThirdParty :: struct #packed {}

NetworkSession :: struct #packed {}

NetworkSessionClass :: struct {
    parent_class: gobj.ObjectClass,
}
Notification :: struct #packed {}

NotificationClass :: struct {
    parent_class: gobj.ObjectClass,
}
NotificationPermissionRequest :: struct #packed {}

NotificationPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
OptionMenuItem :: struct #packed {}

OptionMenu :: struct #packed {}

OptionMenuClass :: struct {
    parent_class: gobj.ObjectClass,
}
PermissionRequest :: struct #packed {}

allow_func_ptr_anon_37 :: #type proc "c" (request: ^PermissionRequest)
deny_func_ptr_anon_38 :: #type proc "c" (request: ^PermissionRequest)
PermissionRequestInterface :: struct {
    parent_interface: gobj.TypeInterface,
    allow: allow_func_ptr_anon_37,
    deny: deny_func_ptr_anon_38,
}

PermissionStateQuery :: struct #packed {}

PermissionState :: enum u32 {GRANTED = 0, DENIED = 1, PROMPT = 2 }
PointerLockPermissionRequest :: struct #packed {}

PointerLockPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
ScriptDialog :: struct #packed {}

ScriptDialogType :: enum u32 {SCRIPT_DIALOG_ALERT = 0, SCRIPT_DIALOG_CONFIRM = 1, SCRIPT_DIALOG_PROMPT = 2, SCRIPT_DIALOG_BEFORE_UNLOAD_CONFIRM = 3 }
Settings :: struct #packed {}

SettingsClass :: struct {
    parent_class: gobj.ObjectClass,
}
HardwareAccelerationPolicy :: enum u32 {ALWAYS = 0, NEVER = 1 }
UserContentInjectedFrames :: enum u32 {USER_CONTENT_INJECT_ALL_FRAMES = 0, USER_CONTENT_INJECT_TOP_FRAME = 1 }
UserStyleLevel :: enum u32 {USER = 0, AUTHOR = 1 }
UserStyleSheet :: struct #packed {}

UserScriptInjectionTime :: enum u32 {USER_SCRIPT_INJECT_AT_DOCUMENT_START = 0, USER_SCRIPT_INJECT_AT_DOCUMENT_END = 1 }
UserScript :: struct #packed {}

UserContentFilter :: struct #packed {}

UserContentManager :: struct #packed {}

UserContentManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
ScriptMessageReply :: struct #packed {}

UserMessage :: struct #packed {}

UserMessageClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
}
UserMessageError :: enum u32 {USER_MESSAGE_UNHANDLED_MESSAGE = 0 }
SecurityManager :: struct #packed {}

SecurityManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
URISchemeResponse :: struct #packed {}

URISchemeResponseClass :: struct {
    parent_class: gobj.ObjectClass,
}
URISchemeRequest :: struct #packed {}

URISchemeRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
WebContext :: struct #packed {}

WebContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
CacheModel :: enum u32 {DOCUMENT_VIEWER = 0, WEB_BROWSER = 1, DOCUMENT_BROWSER = 2 }
URISchemeRequestCallback :: #type proc "c" (request: ^URISchemeRequest, user_data: glib.pointer)
WebResource :: struct #packed {}

WebResourceClass :: struct {
    parent_class: gobj.ObjectClass,
}
WebViewSessionState :: struct #packed {}

WindowProperties :: struct #packed {}

WindowPropertiesClass :: struct {
    parent_class: gobj.ObjectClass,
}
_webkit_reserved0_func_ptr_anon_39 :: #type proc "c" ()
_webkit_reserved1_func_ptr_anon_40 :: #type proc "c" ()
_webkit_reserved2_func_ptr_anon_41 :: #type proc "c" ()
_webkit_reserved3_func_ptr_anon_42 :: #type proc "c" ()
WebViewBaseClass :: struct {
    parentClass: gtk.WidgetClass,
    _webkit_reserved0: _webkit_reserved0_func_ptr_anon_39,
    _webkit_reserved1: _webkit_reserved1_func_ptr_anon_40,
    _webkit_reserved2: _webkit_reserved2_func_ptr_anon_41,
    _webkit_reserved3: _webkit_reserved3_func_ptr_anon_42,
}

WebInspector :: struct #packed {}

WebInspectorClass :: struct {
    parent_class: gobj.ObjectClass,
}
LoadEvent :: enum u32 {LOAD_STARTED = 0, LOAD_REDIRECTED = 1, LOAD_COMMITTED = 2, LOAD_FINISHED = 3 }
load_changed_func_ptr_anon_43 :: #type proc "c" (web_view: ^WebView, load_event: LoadEvent)
load_failed_func_ptr_anon_44 :: #type proc "c" (web_view: ^WebView, load_event: LoadEvent, failing_uri: cstring, error: ^glib.Error) -> glib.boolean
create_func_ptr_anon_45 :: #type proc "c" (web_view: ^WebView, navigation_action: ^NavigationAction) -> ^gtk.Widget
ready_to_show_func_ptr_anon_46 :: #type proc "c" (web_view: ^WebView)
run_as_modal_func_ptr_anon_47 :: #type proc "c" (web_view: ^WebView)
close_func_ptr_anon_48 :: #type proc "c" (web_view: ^WebView)
script_dialog_func_ptr_anon_49 :: #type proc "c" (web_view: ^WebView, dialog: ^ScriptDialog) -> glib.boolean
PolicyDecisionType :: enum u32 {NAVIGATION_ACTION = 0, NEW_WINDOW_ACTION = 1, RESPONSE = 2 }
decide_policy_func_ptr_anon_50 :: #type proc "c" (web_view: ^WebView, decision: ^PolicyDecision, type: PolicyDecisionType) -> glib.boolean
permission_request_func_ptr_anon_51 :: #type proc "c" (web_view: ^WebView, permission_request: ^PermissionRequest) -> glib.boolean
mouse_target_changed_func_ptr_anon_52 :: #type proc "c" (web_view: ^WebView, hit_test_result: ^HitTestResult, modifiers: glib.uint_)
PrintOperation :: struct #packed {}

print_func_ptr_anon_53 :: #type proc "c" (web_view: ^WebView, print_operation: ^PrintOperation) -> glib.boolean
resource_load_started_func_ptr_anon_54 :: #type proc "c" (web_view: ^WebView, resource: ^WebResource, request: ^URIRequest)
enter_fullscreen_func_ptr_anon_55 :: #type proc "c" (web_view: ^WebView) -> glib.boolean
leave_fullscreen_func_ptr_anon_56 :: #type proc "c" (web_view: ^WebView) -> glib.boolean
run_file_chooser_func_ptr_anon_57 :: #type proc "c" (web_view: ^WebView, request: ^FileChooserRequest) -> glib.boolean
context_menu_func_ptr_anon_58 :: #type proc "c" (web_view: ^WebView, context_menu: ^ContextMenu, hit_test_result: ^HitTestResult) -> glib.boolean
context_menu_dismissed_func_ptr_anon_59 :: #type proc "c" (web_view: ^WebView)
submit_form_func_ptr_anon_60 :: #type proc "c" (web_view: ^WebView, request: ^FormSubmissionRequest)
InsecureContentEvent :: enum u32 {INSECURE_CONTENT_RUN = 0, INSECURE_CONTENT_DISPLAYED = 1 }
insecure_content_detected_func_ptr_anon_61 :: #type proc "c" (web_view: ^WebView, event: InsecureContentEvent)
web_process_crashed_func_ptr_anon_62 :: #type proc "c" (web_view: ^WebView) -> glib.boolean
authenticate_func_ptr_anon_63 :: #type proc "c" (web_view: ^WebView, request: ^AuthenticationRequest) -> glib.boolean
load_failed_with_tls_errors_func_ptr_anon_64 :: #type proc "c" (web_view: ^WebView, failing_uri: cstring, certificate: ^gio.TlsCertificate, errors: gio.TlsCertificateFlags) -> glib.boolean
show_notification_func_ptr_anon_65 :: #type proc "c" (web_view: ^WebView, notification: ^Notification) -> glib.boolean
run_color_chooser_func_ptr_anon_66 :: #type proc "c" (web_view: ^WebView, request: ^ColorChooserRequest) -> glib.boolean
show_option_menu_func_ptr_anon_67 :: #type proc "c" (web_view: ^WebView, menu: ^OptionMenu, rectangle: ^gtk.Rectangle) -> glib.boolean
WebProcessTerminationReason :: enum u32 {WEB_PROCESS_CRASHED = 0, WEB_PROCESS_EXCEEDED_MEMORY_LIMIT = 1, WEB_PROCESS_TERMINATED_BY_API = 2 }
web_process_terminated_func_ptr_anon_68 :: #type proc "c" (web_view: ^WebView, reason: WebProcessTerminationReason)
user_message_received_func_ptr_anon_69 :: #type proc "c" (web_view: ^WebView, message: ^UserMessage) -> glib.boolean
query_permission_state_func_ptr_anon_70 :: #type proc "c" (web_view: ^WebView, query: ^PermissionStateQuery) -> glib.boolean
_webkit_reserved0_func_ptr_anon_71 :: #type proc "c" ()
_webkit_reserved1_func_ptr_anon_72 :: #type proc "c" ()
_webkit_reserved2_func_ptr_anon_73 :: #type proc "c" ()
_webkit_reserved3_func_ptr_anon_74 :: #type proc "c" ()
_webkit_reserved4_func_ptr_anon_75 :: #type proc "c" ()
_webkit_reserved5_func_ptr_anon_76 :: #type proc "c" ()
_webkit_reserved6_func_ptr_anon_77 :: #type proc "c" ()
_webkit_reserved7_func_ptr_anon_78 :: #type proc "c" ()
_webkit_reserved8_func_ptr_anon_79 :: #type proc "c" ()
_webkit_reserved9_func_ptr_anon_80 :: #type proc "c" ()
_webkit_reserved10_func_ptr_anon_81 :: #type proc "c" ()
_webkit_reserved11_func_ptr_anon_82 :: #type proc "c" ()
_webkit_reserved12_func_ptr_anon_83 :: #type proc "c" ()
_webkit_reserved13_func_ptr_anon_84 :: #type proc "c" ()
_webkit_reserved14_func_ptr_anon_85 :: #type proc "c" ()
_webkit_reserved15_func_ptr_anon_86 :: #type proc "c" ()
_webkit_reserved16_func_ptr_anon_87 :: #type proc "c" ()
_webkit_reserved17_func_ptr_anon_88 :: #type proc "c" ()
_webkit_reserved18_func_ptr_anon_89 :: #type proc "c" ()
_webkit_reserved19_func_ptr_anon_90 :: #type proc "c" ()
_webkit_reserved20_func_ptr_anon_91 :: #type proc "c" ()
_webkit_reserved21_func_ptr_anon_92 :: #type proc "c" ()
_webkit_reserved22_func_ptr_anon_93 :: #type proc "c" ()
_webkit_reserved23_func_ptr_anon_94 :: #type proc "c" ()
_webkit_reserved24_func_ptr_anon_95 :: #type proc "c" ()
_webkit_reserved25_func_ptr_anon_96 :: #type proc "c" ()
_webkit_reserved26_func_ptr_anon_97 :: #type proc "c" ()
_webkit_reserved27_func_ptr_anon_98 :: #type proc "c" ()
_webkit_reserved28_func_ptr_anon_99 :: #type proc "c" ()
_webkit_reserved29_func_ptr_anon_100 :: #type proc "c" ()
_webkit_reserved30_func_ptr_anon_101 :: #type proc "c" ()
WebViewClass :: struct {
    parent: WebViewBaseClass,
    load_changed: load_changed_func_ptr_anon_43,
    load_failed: load_failed_func_ptr_anon_44,
    create: create_func_ptr_anon_45,
    ready_to_show: ready_to_show_func_ptr_anon_46,
    run_as_modal: run_as_modal_func_ptr_anon_47,
    close: close_func_ptr_anon_48,
    script_dialog: script_dialog_func_ptr_anon_49,
    decide_policy: decide_policy_func_ptr_anon_50,
    permission_request: permission_request_func_ptr_anon_51,
    mouse_target_changed: mouse_target_changed_func_ptr_anon_52,
    print: print_func_ptr_anon_53,
    resource_load_started: resource_load_started_func_ptr_anon_54,
    enter_fullscreen: enter_fullscreen_func_ptr_anon_55,
    leave_fullscreen: leave_fullscreen_func_ptr_anon_56,
    run_file_chooser: run_file_chooser_func_ptr_anon_57,
    context_menu: context_menu_func_ptr_anon_58,
    context_menu_dismissed: context_menu_dismissed_func_ptr_anon_59,
    submit_form: submit_form_func_ptr_anon_60,
    insecure_content_detected: insecure_content_detected_func_ptr_anon_61,
    web_process_crashed: web_process_crashed_func_ptr_anon_62,
    authenticate: authenticate_func_ptr_anon_63,
    load_failed_with_tls_errors: load_failed_with_tls_errors_func_ptr_anon_64,
    show_notification: show_notification_func_ptr_anon_65,
    run_color_chooser: run_color_chooser_func_ptr_anon_66,
    show_option_menu: show_option_menu_func_ptr_anon_67,
    web_process_terminated: web_process_terminated_func_ptr_anon_68,
    user_message_received: user_message_received_func_ptr_anon_69,
    query_permission_state: query_permission_state_func_ptr_anon_70,
    _webkit_reserved0: _webkit_reserved0_func_ptr_anon_71,
    _webkit_reserved1: _webkit_reserved1_func_ptr_anon_72,
    _webkit_reserved2: _webkit_reserved2_func_ptr_anon_73,
    _webkit_reserved3: _webkit_reserved3_func_ptr_anon_74,
    _webkit_reserved4: _webkit_reserved4_func_ptr_anon_75,
    _webkit_reserved5: _webkit_reserved5_func_ptr_anon_76,
    _webkit_reserved6: _webkit_reserved6_func_ptr_anon_77,
    _webkit_reserved7: _webkit_reserved7_func_ptr_anon_78,
    _webkit_reserved8: _webkit_reserved8_func_ptr_anon_79,
    _webkit_reserved9: _webkit_reserved9_func_ptr_anon_80,
    _webkit_reserved10: _webkit_reserved10_func_ptr_anon_81,
    _webkit_reserved11: _webkit_reserved11_func_ptr_anon_82,
    _webkit_reserved12: _webkit_reserved12_func_ptr_anon_83,
    _webkit_reserved13: _webkit_reserved13_func_ptr_anon_84,
    _webkit_reserved14: _webkit_reserved14_func_ptr_anon_85,
    _webkit_reserved15: _webkit_reserved15_func_ptr_anon_86,
    _webkit_reserved16: _webkit_reserved16_func_ptr_anon_87,
    _webkit_reserved17: _webkit_reserved17_func_ptr_anon_88,
    _webkit_reserved18: _webkit_reserved18_func_ptr_anon_89,
    _webkit_reserved19: _webkit_reserved19_func_ptr_anon_90,
    _webkit_reserved20: _webkit_reserved20_func_ptr_anon_91,
    _webkit_reserved21: _webkit_reserved21_func_ptr_anon_92,
    _webkit_reserved22: _webkit_reserved22_func_ptr_anon_93,
    _webkit_reserved23: _webkit_reserved23_func_ptr_anon_94,
    _webkit_reserved24: _webkit_reserved24_func_ptr_anon_95,
    _webkit_reserved25: _webkit_reserved25_func_ptr_anon_96,
    _webkit_reserved26: _webkit_reserved26_func_ptr_anon_97,
    _webkit_reserved27: _webkit_reserved27_func_ptr_anon_98,
    _webkit_reserved28: _webkit_reserved28_func_ptr_anon_99,
    _webkit_reserved29: _webkit_reserved29_func_ptr_anon_100,
    _webkit_reserved30: _webkit_reserved30_func_ptr_anon_101,
}

SaveMode :: enum u32 {MHTML = 0 }
SnapshotOptionsBit :: enum u32 {INCLUDE_SELECTION_HIGHLIGHTING = 0, TRANSPARENT_BACKGROUND = 1}
SnapshotOptions :: bit_set[SnapshotOptionsBit; u32]
SNAPSHOT_OPTIONS_NONE :: SnapshotOptions{}
SnapshotRegion :: enum u32 {VISIBLE = 0, FULL_DOCUMENT = 1 }
MediaCaptureState :: enum u32 {NONE = 0, ACTIVE = 1, MUTED = 2 }
WebExtensionMode :: enum u32 {NONE = 0, MANIFESTV2 = 1, MANIFESTV3 = 2 }
PrintOperationClass :: struct {
    parent_class: gobj.ObjectClass,
}
PrintOperationResponse :: enum u32 {PRINT = 0, CANCEL = 1 }
ResponsePolicyDecision :: struct #packed {}

ResponsePolicyDecisionClass :: struct {
    parent_class: PolicyDecisionClass,
}
UserContentFilterStore :: struct #packed {}

UserContentFilterStoreClass :: struct {
    parent_class: gobj.ObjectClass,
}
UserMediaPermissionRequest :: struct #packed {}

UserMediaPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
WebExtensionMatchPatternOptionsBit :: enum u32 {NONE = 0, IGNORE_SCHEMES = 1, IGNORE_PATHS = 2, MATCH_BIDIRECTIONALLY = 3}
WebExtensionMatchPatternOptions :: bit_set[WebExtensionMatchPatternOptionsBit; u32]
WebExtensionMatchPattern :: struct #packed {}

WebExtension :: struct #packed {}

WebExtensionClass :: struct {
    parent_class: gobj.ObjectClass,
}
WebsiteDataAccessPermissionRequest :: struct #packed {}

WebsiteDataAccessPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
XRPermissionRequest :: struct #packed {}

XRPermissionRequestClass :: struct {
    parent_class: gobj.ObjectClass,
}
XRSessionMode :: enum u32 {INLINE = 0, IMMERSIVE_VR = 1, IMMERSIVE_AR = 2 }
XRSessionFeaturesBit :: enum u32 {VIEWER = 0, LOCAL = 1, LOCAL_FLOOR = 2, BOUNDED_FLOOR = 3, UNBOUNDED = 4, HAND_TRACKING = 5, HIT_TEST = 6, LAYERS = 7}
XRSessionFeatures :: bit_set[XRSessionFeaturesBit; u32]

@(default_calling_convention = "c")
foreign webkit_runic {
    @(link_name = "webkit_application_info_get_type")
    application_info_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_application_info_new")
    application_info_new :: proc() -> ^ApplicationInfo ---

    @(link_name = "webkit_application_info_ref")
    application_info_ref :: proc(info: ^ApplicationInfo) -> ^ApplicationInfo ---

    @(link_name = "webkit_application_info_unref")
    application_info_unref :: proc(info: ^ApplicationInfo) ---

    @(link_name = "webkit_application_info_set_name")
    application_info_set_name :: proc(info: ^ApplicationInfo, name: cstring) ---

    @(link_name = "webkit_application_info_get_name")
    application_info_get_name :: proc(info: ^ApplicationInfo) -> cstring ---

    @(link_name = "webkit_application_info_set_version")
    application_info_set_version :: proc(info: ^ApplicationInfo, major: glib.uint64, minor: glib.uint64, micro: glib.uint64) ---

    @(link_name = "webkit_application_info_get_version")
    application_info_get_version :: proc(info: ^ApplicationInfo, major: ^glib.uint64, minor: ^glib.uint64, micro: ^glib.uint64) ---

    @(link_name = "webkit_credential_get_type")
    credential_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_credential_new")
    credential_new :: proc(username: cstring, password: cstring, persistence: CredentialPersistence) -> ^Credential ---

    @(link_name = "webkit_credential_new_for_certificate_pin")
    credential_new_for_certificate_pin :: proc(pin: cstring, persistence: CredentialPersistence) -> ^Credential ---

    @(link_name = "webkit_credential_new_for_certificate")
    credential_new_for_certificate :: proc(certificate: ^gio.TlsCertificate, persistence: CredentialPersistence) -> ^Credential ---

    @(link_name = "webkit_credential_copy")
    credential_copy :: proc(credential: ^Credential) -> ^Credential ---

    @(link_name = "webkit_credential_free")
    credential_free :: proc(credential: ^Credential) ---

    @(link_name = "webkit_credential_get_username")
    credential_get_username :: proc(credential: ^Credential) -> cstring ---

    @(link_name = "webkit_credential_get_password")
    credential_get_password :: proc(credential: ^Credential) -> cstring ---

    @(link_name = "webkit_credential_has_password")
    credential_has_password :: proc(credential: ^Credential) -> glib.boolean ---

    @(link_name = "webkit_credential_get_certificate")
    credential_get_certificate :: proc(credential: ^Credential) -> ^gio.TlsCertificate ---

    @(link_name = "webkit_credential_get_persistence")
    credential_get_persistence :: proc(credential: ^Credential) -> CredentialPersistence ---

    @(link_name = "webkit_security_origin_get_type")
    security_origin_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_security_origin_new")
    security_origin_new :: proc(protocol: cstring, host: cstring, port: glib.uint16) -> ^SecurityOrigin ---

    @(link_name = "webkit_security_origin_new_for_uri")
    security_origin_new_for_uri :: proc(uri: cstring) -> ^SecurityOrigin ---

    @(link_name = "webkit_security_origin_ref")
    security_origin_ref :: proc(origin: ^SecurityOrigin) -> ^SecurityOrigin ---

    @(link_name = "webkit_security_origin_unref")
    security_origin_unref :: proc(origin: ^SecurityOrigin) ---

    @(link_name = "webkit_security_origin_get_protocol")
    security_origin_get_protocol :: proc(origin: ^SecurityOrigin) -> cstring ---

    @(link_name = "webkit_security_origin_get_host")
    security_origin_get_host :: proc(origin: ^SecurityOrigin) -> cstring ---

    @(link_name = "webkit_security_origin_get_port")
    security_origin_get_port :: proc(origin: ^SecurityOrigin) -> glib.uint16 ---

    @(link_name = "webkit_security_origin_to_string")
    security_origin_to_string :: proc(origin: ^SecurityOrigin) -> cstring ---

    @(link_name = "webkit_authentication_request_get_type")
    authentication_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_authentication_request_can_save_credentials")
    authentication_request_can_save_credentials :: proc(request: ^AuthenticationRequest) -> glib.boolean ---

    @(link_name = "webkit_authentication_request_set_can_save_credentials")
    authentication_request_set_can_save_credentials :: proc(request: ^AuthenticationRequest, enabled: glib.boolean) ---

    @(link_name = "webkit_authentication_request_get_proposed_credential")
    authentication_request_get_proposed_credential :: proc(request: ^AuthenticationRequest) -> ^Credential ---

    @(link_name = "webkit_authentication_request_set_proposed_credential")
    authentication_request_set_proposed_credential :: proc(request: ^AuthenticationRequest, credential: ^Credential) ---

    @(link_name = "webkit_authentication_request_get_host")
    authentication_request_get_host :: proc(request: ^AuthenticationRequest) -> cstring ---

    @(link_name = "webkit_authentication_request_get_port")
    authentication_request_get_port :: proc(request: ^AuthenticationRequest) -> glib.uint_ ---

    @(link_name = "webkit_authentication_request_get_security_origin")
    authentication_request_get_security_origin :: proc(request: ^AuthenticationRequest) -> ^SecurityOrigin ---

    @(link_name = "webkit_authentication_request_get_realm")
    authentication_request_get_realm :: proc(request: ^AuthenticationRequest) -> cstring ---

    @(link_name = "webkit_authentication_request_get_scheme")
    authentication_request_get_scheme :: proc(request: ^AuthenticationRequest) -> AuthenticationScheme ---

    @(link_name = "webkit_authentication_request_is_for_proxy")
    authentication_request_is_for_proxy :: proc(request: ^AuthenticationRequest) -> glib.boolean ---

    @(link_name = "webkit_authentication_request_is_retry")
    authentication_request_is_retry :: proc(request: ^AuthenticationRequest) -> glib.boolean ---

    @(link_name = "webkit_authentication_request_authenticate")
    authentication_request_authenticate :: proc(request: ^AuthenticationRequest, credential: ^Credential) ---

    @(link_name = "webkit_authentication_request_cancel")
    authentication_request_cancel :: proc(request: ^AuthenticationRequest) ---

    @(link_name = "webkit_authentication_request_get_certificate_pin_flags")
    authentication_request_get_certificate_pin_flags :: proc(request: ^AuthenticationRequest) -> gio.TlsPasswordFlags ---

    @(link_name = "webkit_automation_session_get_type")
    automation_session_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_automation_session_get_id")
    automation_session_get_id :: proc(session: ^AutomationSession) -> cstring ---

    @(link_name = "webkit_automation_session_set_application_info")
    automation_session_set_application_info :: proc(session: ^AutomationSession, info: ^ApplicationInfo) ---

    @(link_name = "webkit_automation_session_get_application_info")
    automation_session_get_application_info :: proc(session: ^AutomationSession) -> ^ApplicationInfo ---

    @(link_name = "webkit_back_forward_list_item_get_type")
    back_forward_list_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_back_forward_list_item_get_uri")
    back_forward_list_item_get_uri :: proc(list_item: ^BackForwardListItem) -> cstring ---

    @(link_name = "webkit_back_forward_list_item_get_title")
    back_forward_list_item_get_title :: proc(list_item: ^BackForwardListItem) -> cstring ---

    @(link_name = "webkit_back_forward_list_item_get_original_uri")
    back_forward_list_item_get_original_uri :: proc(list_item: ^BackForwardListItem) -> cstring ---

    @(link_name = "webkit_back_forward_list_get_type")
    back_forward_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_back_forward_list_get_current_item")
    back_forward_list_get_current_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---

    @(link_name = "webkit_back_forward_list_get_back_item")
    back_forward_list_get_back_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---

    @(link_name = "webkit_back_forward_list_get_forward_item")
    back_forward_list_get_forward_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---

    @(link_name = "webkit_back_forward_list_get_nth_item")
    back_forward_list_get_nth_item :: proc(back_forward_list: ^BackForwardList, index: glib.int_) -> ^BackForwardListItem ---

    @(link_name = "webkit_back_forward_list_get_length")
    back_forward_list_get_length :: proc(back_forward_list: ^BackForwardList) -> glib.uint_ ---

    @(link_name = "webkit_back_forward_list_get_back_list")
    back_forward_list_get_back_list :: proc(back_forward_list: ^BackForwardList) -> ^glib.List ---

    @(link_name = "webkit_back_forward_list_get_back_list_with_limit")
    back_forward_list_get_back_list_with_limit :: proc(back_forward_list: ^BackForwardList, limit: glib.uint_) -> ^glib.List ---

    @(link_name = "webkit_back_forward_list_get_forward_list")
    back_forward_list_get_forward_list :: proc(back_forward_list: ^BackForwardList) -> ^glib.List ---

    @(link_name = "webkit_back_forward_list_get_forward_list_with_limit")
    back_forward_list_get_forward_list_with_limit :: proc(back_forward_list: ^BackForwardList, limit: glib.uint_) -> ^glib.List ---

    @(link_name = "webkit_clipboard_permission_request_get_type")
    clipboard_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_color_chooser_request_get_type")
    color_chooser_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_color_chooser_request_get_rgba")
    color_chooser_request_get_rgba :: proc(request: ^ColorChooserRequest, rgba: ^gtk.RGBA) ---

    @(link_name = "webkit_color_chooser_request_set_rgba")
    color_chooser_request_set_rgba :: proc(request: ^ColorChooserRequest, rgba: ^gtk.RGBA) ---

    @(link_name = "webkit_color_chooser_request_get_element_rectangle")
    color_chooser_request_get_element_rectangle :: proc(request: ^ColorChooserRequest, rect: ^gtk.Rectangle) ---

    @(link_name = "webkit_color_chooser_request_finish")
    color_chooser_request_finish :: proc(request: ^ColorChooserRequest) ---

    @(link_name = "webkit_color_chooser_request_cancel")
    color_chooser_request_cancel :: proc(request: ^ColorChooserRequest) ---

    @(link_name = "webkit_context_menu_get_type")
    context_menu_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_context_menu_new")
    context_menu_new :: proc() -> ^ContextMenu ---

    @(link_name = "webkit_context_menu_new_with_items")
    context_menu_new_with_items :: proc(items: ^glib.List) -> ^ContextMenu ---

    @(link_name = "webkit_context_menu_prepend")
    context_menu_prepend :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---

    @(link_name = "webkit_context_menu_append")
    context_menu_append :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---

    @(link_name = "webkit_context_menu_insert")
    context_menu_insert :: proc(menu: ^ContextMenu, item: ^ContextMenuItem, position: glib.int_) ---

    @(link_name = "webkit_context_menu_move_item")
    context_menu_move_item :: proc(menu: ^ContextMenu, item: ^ContextMenuItem, position: glib.int_) ---

    @(link_name = "webkit_context_menu_get_items")
    context_menu_get_items :: proc(menu: ^ContextMenu) -> ^glib.List ---

    @(link_name = "webkit_context_menu_get_n_items")
    context_menu_get_n_items :: proc(menu: ^ContextMenu) -> glib.uint_ ---

    @(link_name = "webkit_context_menu_first")
    context_menu_first :: proc(menu: ^ContextMenu) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_last")
    context_menu_last :: proc(menu: ^ContextMenu) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_get_item_at_position")
    context_menu_get_item_at_position :: proc(menu: ^ContextMenu, position: glib.uint_) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_remove")
    context_menu_remove :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---

    @(link_name = "webkit_context_menu_remove_all")
    context_menu_remove_all :: proc(menu: ^ContextMenu) ---

    @(link_name = "webkit_context_menu_set_user_data")
    context_menu_set_user_data :: proc(menu: ^ContextMenu, user_data: ^glib.Variant) ---

    @(link_name = "webkit_context_menu_get_user_data")
    context_menu_get_user_data :: proc(menu: ^ContextMenu) -> ^glib.Variant ---

    @(link_name = "webkit_context_menu_get_event")
    context_menu_get_event :: proc(menu: ^ContextMenu) -> ^gtk.Event ---

    @(link_name = "webkit_context_menu_get_position")
    context_menu_get_position :: proc(menu: ^ContextMenu, x: ^glib.int_, y: ^glib.int_) -> glib.boolean ---

    @(link_name = "webkit_context_menu_item_get_type")
    context_menu_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_context_menu_item_new_from_gaction")
    context_menu_item_new_from_gaction :: proc(action: ^gio.Action, label: cstring, target: ^glib.Variant) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_item_new_from_stock_action")
    context_menu_item_new_from_stock_action :: proc(action: ContextMenuAction) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_item_new_from_stock_action_with_label")
    context_menu_item_new_from_stock_action_with_label :: proc(action: ContextMenuAction, label: cstring) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_item_new_with_submenu")
    context_menu_item_new_with_submenu :: proc(label: cstring, submenu: ^ContextMenu) -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_item_new_separator")
    context_menu_item_new_separator :: proc() -> ^ContextMenuItem ---

    @(link_name = "webkit_context_menu_item_get_gaction")
    context_menu_item_get_gaction :: proc(item: ^ContextMenuItem) -> ^gio.Action ---

    @(link_name = "webkit_context_menu_item_get_gaction_target")
    context_menu_item_get_gaction_target :: proc(item: ^ContextMenuItem) -> ^glib.Variant ---

    @(link_name = "webkit_context_menu_item_get_stock_action")
    context_menu_item_get_stock_action :: proc(item: ^ContextMenuItem) -> ContextMenuAction ---

    @(link_name = "webkit_context_menu_item_get_title")
    context_menu_item_get_title :: proc(item: ^ContextMenuItem) -> cstring ---

    @(link_name = "webkit_context_menu_item_is_separator")
    context_menu_item_is_separator :: proc(item: ^ContextMenuItem) -> glib.boolean ---

    @(link_name = "webkit_context_menu_item_set_submenu")
    context_menu_item_set_submenu :: proc(item: ^ContextMenuItem, submenu: ^ContextMenu) ---

    @(link_name = "webkit_context_menu_item_get_submenu")
    context_menu_item_get_submenu :: proc(item: ^ContextMenuItem) -> ^ContextMenu ---

    @(link_name = "webkit_cookie_manager_get_type")
    cookie_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_cookie_manager_set_persistent_storage")
    cookie_manager_set_persistent_storage :: proc(cookie_manager: ^CookieManager, filename: cstring, storage: CookiePersistentStorage) ---

    @(link_name = "webkit_cookie_manager_set_accept_policy")
    cookie_manager_set_accept_policy :: proc(cookie_manager: ^CookieManager, policy: CookieAcceptPolicy) ---

    @(link_name = "webkit_cookie_manager_get_accept_policy")
    cookie_manager_get_accept_policy :: proc(cookie_manager: ^CookieManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_get_accept_policy_finish")
    cookie_manager_get_accept_policy_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> CookieAcceptPolicy ---

    @(link_name = "webkit_cookie_manager_add_cookie")
    cookie_manager_add_cookie :: proc(cookie_manager: ^CookieManager, cookie: ^soup.Cookie, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_add_cookie_finish")
    cookie_manager_add_cookie_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_cookie_manager_get_cookies")
    cookie_manager_get_cookies :: proc(cookie_manager: ^CookieManager, uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_get_cookies_finish")
    cookie_manager_get_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "webkit_cookie_manager_delete_cookie")
    cookie_manager_delete_cookie :: proc(cookie_manager: ^CookieManager, cookie: ^soup.Cookie, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_delete_cookie_finish")
    cookie_manager_delete_cookie_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_cookie_manager_replace_cookies")
    cookie_manager_replace_cookies :: proc(cookie_manager: ^CookieManager, cookies: ^glib.List, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_replace_cookies_finish")
    cookie_manager_replace_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_cookie_manager_get_all_cookies")
    cookie_manager_get_all_cookies :: proc(cookie_manager: ^CookieManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_cookie_manager_get_all_cookies_finish")
    cookie_manager_get_all_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "webkit_device_info_permission_request_get_type")
    device_info_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_uri_request_get_type")
    uri_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_uri_request_new")
    uri_request_new :: proc(uri: cstring) -> ^URIRequest ---

    @(link_name = "webkit_uri_request_get_uri")
    uri_request_get_uri :: proc(request: ^URIRequest) -> cstring ---

    @(link_name = "webkit_uri_request_set_uri")
    uri_request_set_uri :: proc(request: ^URIRequest, uri: cstring) ---

    @(link_name = "webkit_uri_request_get_http_method")
    uri_request_get_http_method :: proc(request: ^URIRequest) -> cstring ---

    @(link_name = "webkit_uri_request_get_http_headers")
    uri_request_get_http_headers :: proc(request: ^URIRequest) -> ^soup.MessageHeaders ---

    @(link_name = "webkit_uri_response_get_type")
    uri_response_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_uri_response_get_uri")
    uri_response_get_uri :: proc(response: ^URIResponse) -> cstring ---

    @(link_name = "webkit_uri_response_get_status_code")
    uri_response_get_status_code :: proc(response: ^URIResponse) -> glib.uint_ ---

    @(link_name = "webkit_uri_response_get_content_length")
    uri_response_get_content_length :: proc(response: ^URIResponse) -> glib.uint64 ---

    @(link_name = "webkit_uri_response_get_mime_type")
    uri_response_get_mime_type :: proc(response: ^URIResponse) -> cstring ---

    @(link_name = "webkit_uri_response_get_suggested_filename")
    uri_response_get_suggested_filename :: proc(response: ^URIResponse) -> cstring ---

    @(link_name = "webkit_uri_response_get_http_headers")
    uri_response_get_http_headers :: proc(response: ^URIResponse) -> ^soup.MessageHeaders ---

    @(link_name = "webkit_download_get_type")
    download_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_download_get_request")
    download_get_request :: proc(download: ^Download) -> ^URIRequest ---

    @(link_name = "webkit_download_get_destination")
    download_get_destination :: proc(download: ^Download) -> cstring ---

    @(link_name = "webkit_download_set_destination")
    download_set_destination :: proc(download: ^Download, destination: cstring) ---

    @(link_name = "webkit_download_get_response")
    download_get_response :: proc(download: ^Download) -> ^URIResponse ---

    @(link_name = "webkit_download_cancel")
    download_cancel :: proc(download: ^Download) ---

    @(link_name = "webkit_download_get_estimated_progress")
    download_get_estimated_progress :: proc(download: ^Download) -> glib.double ---

    @(link_name = "webkit_download_get_elapsed_time")
    download_get_elapsed_time :: proc(download: ^Download) -> glib.double ---

    @(link_name = "webkit_download_get_received_data_length")
    download_get_received_data_length :: proc(download: ^Download) -> glib.uint64 ---

    @(link_name = "webkit_download_get_web_view")
    download_get_web_view :: proc(download: ^Download) -> ^WebView ---

    @(link_name = "webkit_download_get_allow_overwrite")
    download_get_allow_overwrite :: proc(download: ^Download) -> glib.boolean ---

    @(link_name = "webkit_download_set_allow_overwrite")
    download_set_allow_overwrite :: proc(download: ^Download, allowed: glib.boolean) ---

    @(link_name = "webkit_editor_state_get_type")
    editor_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_editor_state_get_typing_attributes")
    editor_state_get_typing_attributes :: proc(editor_state: ^EditorState) -> glib.uint_ ---

    @(link_name = "webkit_editor_state_is_cut_available")
    editor_state_is_cut_available :: proc(editor_state: ^EditorState) -> glib.boolean ---

    @(link_name = "webkit_editor_state_is_copy_available")
    editor_state_is_copy_available :: proc(editor_state: ^EditorState) -> glib.boolean ---

    @(link_name = "webkit_editor_state_is_paste_available")
    editor_state_is_paste_available :: proc(editor_state: ^EditorState) -> glib.boolean ---

    @(link_name = "webkit_editor_state_is_undo_available")
    editor_state_is_undo_available :: proc(editor_state: ^EditorState) -> glib.boolean ---

    @(link_name = "webkit_editor_state_is_redo_available")
    editor_state_is_redo_available :: proc(editor_state: ^EditorState) -> glib.boolean ---

    @(link_name = "webkit_authentication_scheme_get_type")
    authentication_scheme_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_automation_browsing_context_presentation_get_type")
    automation_browsing_context_presentation_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_context_menu_action_get_type")
    context_menu_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_cookie_persistent_storage_get_type")
    cookie_persistent_storage_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_cookie_accept_policy_get_type")
    cookie_accept_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_credential_persistence_get_type")
    credential_persistence_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_editor_typing_attributes_get_type")
    editor_typing_attributes_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_network_error_get_type")
    network_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_policy_error_get_type")
    policy_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_download_error_get_type")
    download_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_print_error_get_type")
    print_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_javascript_error_get_type")
    javascript_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_snapshot_error_get_type")
    snapshot_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_error_get_type")
    web_extension_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_match_pattern_error_get_type")
    web_extension_match_pattern_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_content_filter_error_get_type")
    user_content_filter_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_media_error_get_type")
    media_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_favicon_database_error_get_type")
    favicon_database_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_feature_status_get_type")
    feature_status_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_find_options_get_type")
    find_options_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_hit_test_result_context_get_type")
    hit_test_result_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_input_purpose_get_type")
    input_purpose_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_input_hints_get_type")
    input_hints_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_navigation_type_get_type")
    navigation_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_network_proxy_mode_get_type")
    network_proxy_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_permission_state_get_type")
    permission_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_print_operation_response_get_type")
    print_operation_response_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_script_dialog_type_get_type")
    script_dialog_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_hardware_acceleration_policy_get_type")
    hardware_acceleration_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_content_injected_frames_get_type")
    user_content_injected_frames_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_style_level_get_type")
    user_style_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_script_injection_time_get_type")
    user_script_injection_time_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_message_error_get_type")
    user_message_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_cache_model_get_type")
    cache_model_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_match_pattern_options_get_type")
    web_extension_match_pattern_options_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_policy_decision_type_get_type")
    policy_decision_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_load_event_get_type")
    load_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_save_mode_get_type")
    save_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_insecure_content_event_get_type")
    insecure_content_event_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_snapshot_options_get_type")
    snapshot_options_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_snapshot_region_get_type")
    snapshot_region_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_process_termination_reason_get_type")
    web_process_termination_reason_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_media_capture_state_get_type")
    media_capture_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_mode_get_type")
    web_extension_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_website_data_types_get_type")
    website_data_types_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_tls_errors_policy_get_type")
    tls_errors_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_autoplay_policy_get_type")
    autoplay_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_xr_session_mode_get_type")
    xr_session_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_xr_session_features_get_type")
    xr_session_features_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_network_error_quark")
    network_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_policy_error_quark")
    policy_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_download_error_quark")
    download_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_print_error_quark")
    print_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_javascript_error_quark")
    javascript_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_snapshot_error_quark")
    snapshot_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_web_extension_error_quark")
    web_extension_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_web_extension_match_pattern_error_quark")
    web_extension_match_pattern_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_user_content_filter_error_quark")
    user_content_filter_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_media_error_quark")
    media_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_favicon_database_get_type")
    favicon_database_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_favicon_database_error_quark")
    favicon_database_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_favicon_database_get_favicon")
    favicon_database_get_favicon :: proc(database: ^FaviconDatabase, page_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_favicon_database_get_favicon_finish")
    favicon_database_get_favicon_finish :: proc(database: ^FaviconDatabase, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gtk.Texture ---

    @(link_name = "webkit_favicon_database_get_favicon_uri")
    favicon_database_get_favicon_uri :: proc(database: ^FaviconDatabase, page_uri: cstring) -> cstring ---

    @(link_name = "webkit_favicon_database_clear")
    favicon_database_clear :: proc(database: ^FaviconDatabase) ---

    @(link_name = "webkit_feature_get_type")
    feature_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_feature_ref")
    feature_ref :: proc(feature: ^Feature) -> ^Feature ---

    @(link_name = "webkit_feature_unref")
    feature_unref :: proc(feature: ^Feature) ---

    @(link_name = "webkit_feature_get_identifier")
    feature_get_identifier :: proc(feature: ^Feature) -> cstring ---

    @(link_name = "webkit_feature_get_name")
    feature_get_name :: proc(feature: ^Feature) -> cstring ---

    @(link_name = "webkit_feature_get_details")
    feature_get_details :: proc(feature: ^Feature) -> cstring ---

    @(link_name = "webkit_feature_get_category")
    feature_get_category :: proc(feature: ^Feature) -> cstring ---

    @(link_name = "webkit_feature_get_status")
    feature_get_status :: proc(feature: ^Feature) -> FeatureStatus ---

    @(link_name = "webkit_feature_get_default_value")
    feature_get_default_value :: proc(feature: ^Feature) -> glib.boolean ---

    @(link_name = "webkit_feature_list_get_type")
    feature_list_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_feature_list_ref")
    feature_list_ref :: proc(feature_list: ^FeatureList) -> ^FeatureList ---

    @(link_name = "webkit_feature_list_unref")
    feature_list_unref :: proc(feature_list: ^FeatureList) ---

    @(link_name = "webkit_feature_list_get_length")
    feature_list_get_length :: proc(feature_list: ^FeatureList) -> glib.size ---

    @(link_name = "webkit_feature_list_get")
    feature_list_get :: proc(feature_list: ^FeatureList, index: glib.size) -> ^Feature ---

    @(link_name = "webkit_file_chooser_request_get_type")
    file_chooser_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_file_chooser_request_get_mime_types")
    file_chooser_request_get_mime_types :: proc(request: ^FileChooserRequest) -> ^cstring ---

    @(link_name = "webkit_file_chooser_request_get_mime_types_filter")
    file_chooser_request_get_mime_types_filter :: proc(request: ^FileChooserRequest) -> ^gtk.FileFilter ---

    @(link_name = "webkit_file_chooser_request_get_select_multiple")
    file_chooser_request_get_select_multiple :: proc(request: ^FileChooserRequest) -> glib.boolean ---

    @(link_name = "webkit_file_chooser_request_select_files")
    file_chooser_request_select_files :: proc(request: ^FileChooserRequest, files: [^]cstring) ---

    @(link_name = "webkit_file_chooser_request_get_selected_files")
    file_chooser_request_get_selected_files :: proc(request: ^FileChooserRequest) -> ^cstring ---

    @(link_name = "webkit_file_chooser_request_cancel")
    file_chooser_request_cancel :: proc(request: ^FileChooserRequest) ---

    @(link_name = "webkit_find_controller_get_type")
    find_controller_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_find_controller_search")
    find_controller_search :: proc(find_controller: ^FindController, search_text: cstring, find_options: glib.uint32, max_match_count: glib.uint_) ---

    @(link_name = "webkit_find_controller_search_finish")
    find_controller_search_finish :: proc(find_controller: ^FindController) ---

    @(link_name = "webkit_find_controller_search_next")
    find_controller_search_next :: proc(find_controller: ^FindController) ---

    @(link_name = "webkit_find_controller_search_previous")
    find_controller_search_previous :: proc(find_controller: ^FindController) ---

    @(link_name = "webkit_find_controller_count_matches")
    find_controller_count_matches :: proc(find_controller: ^FindController, search_text: cstring, find_options: glib.uint32, max_match_count: glib.uint_) ---

    @(link_name = "webkit_find_controller_get_search_text")
    find_controller_get_search_text :: proc(find_controller: ^FindController) -> cstring ---

    @(link_name = "webkit_find_controller_get_options")
    find_controller_get_options :: proc(find_controller: ^FindController) -> glib.uint32 ---

    @(link_name = "webkit_find_controller_get_max_match_count")
    find_controller_get_max_match_count :: proc(find_controller: ^FindController) -> glib.uint_ ---

    @(link_name = "webkit_find_controller_get_web_view")
    find_controller_get_web_view :: proc(find_controller: ^FindController) -> ^WebView ---

    @(link_name = "webkit_form_submission_request_get_type")
    form_submission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_form_submission_request_list_text_fields")
    form_submission_request_list_text_fields :: proc(request: ^FormSubmissionRequest, field_names: ^^glib.PtrArray, field_values: ^^glib.PtrArray) -> glib.boolean ---

    @(link_name = "webkit_form_submission_request_submit")
    form_submission_request_submit :: proc(request: ^FormSubmissionRequest) ---

    @(link_name = "webkit_geolocation_manager_get_type")
    geolocation_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_geolocation_manager_update_position")
    geolocation_manager_update_position :: proc(manager: ^eolocationManager, position: ^eolocationPosition) ---

    @(link_name = "webkit_geolocation_manager_failed")
    geolocation_manager_failed :: proc(manager: ^eolocationManager, error_message: cstring) ---

    @(link_name = "webkit_geolocation_manager_get_enable_high_accuracy")
    geolocation_manager_get_enable_high_accuracy :: proc(manager: ^eolocationManager) -> glib.boolean ---

    @(link_name = "webkit_geolocation_position_get_type")
    geolocation_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_geolocation_position_new")
    geolocation_position_new :: proc(latitude: f64, longitude: f64, accuracy: f64) -> ^eolocationPosition ---

    @(link_name = "webkit_geolocation_position_copy")
    geolocation_position_copy :: proc(position: ^eolocationPosition) -> ^eolocationPosition ---

    @(link_name = "webkit_geolocation_position_free")
    geolocation_position_free :: proc(position: ^eolocationPosition) ---

    @(link_name = "webkit_geolocation_position_set_timestamp")
    geolocation_position_set_timestamp :: proc(position: ^eolocationPosition, timestamp: glib.uint64) ---

    @(link_name = "webkit_geolocation_position_set_altitude")
    geolocation_position_set_altitude :: proc(position: ^eolocationPosition, altitude: f64) ---

    @(link_name = "webkit_geolocation_position_set_altitude_accuracy")
    geolocation_position_set_altitude_accuracy :: proc(position: ^eolocationPosition, altitude_accuracy: f64) ---

    @(link_name = "webkit_geolocation_position_set_heading")
    geolocation_position_set_heading :: proc(position: ^eolocationPosition, heading: f64) ---

    @(link_name = "webkit_geolocation_position_set_speed")
    geolocation_position_set_speed :: proc(position: ^eolocationPosition, speed: f64) ---

    @(link_name = "webkit_geolocation_permission_request_get_type")
    geolocation_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_hit_test_result_get_type")
    hit_test_result_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_hit_test_result_get_context")
    hit_test_result_get_context :: proc(hit_test_result: ^HitTestResult) -> glib.uint_ ---

    @(link_name = "webkit_hit_test_result_context_is_link")
    hit_test_result_context_is_link :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_hit_test_result_context_is_image")
    hit_test_result_context_is_image :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_hit_test_result_context_is_media")
    hit_test_result_context_is_media :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_hit_test_result_context_is_editable")
    hit_test_result_context_is_editable :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_hit_test_result_context_is_selection")
    hit_test_result_context_is_selection :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_hit_test_result_get_link_uri")
    hit_test_result_get_link_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---

    @(link_name = "webkit_hit_test_result_get_link_title")
    hit_test_result_get_link_title :: proc(hit_test_result: ^HitTestResult) -> cstring ---

    @(link_name = "webkit_hit_test_result_get_link_label")
    hit_test_result_get_link_label :: proc(hit_test_result: ^HitTestResult) -> cstring ---

    @(link_name = "webkit_hit_test_result_get_image_uri")
    hit_test_result_get_image_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---

    @(link_name = "webkit_hit_test_result_get_media_uri")
    hit_test_result_get_media_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---

    @(link_name = "webkit_hit_test_result_context_is_scrollbar")
    hit_test_result_context_is_scrollbar :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---

    @(link_name = "webkit_input_method_context_get_type")
    input_method_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_input_method_context_set_enable_preedit")
    input_method_context_set_enable_preedit :: proc(context_p: ^InputMethodContext, enabled: glib.boolean) ---

    @(link_name = "webkit_input_method_context_get_preedit")
    input_method_context_get_preedit :: proc(context_p: ^InputMethodContext, text: ^cstring, underlines: ^^glib.List, cursor_offset: ^glib.uint_) ---

    @(link_name = "webkit_input_method_context_filter_key_event")
    input_method_context_filter_key_event :: proc(context_p: ^InputMethodContext, key_event: ^gtk.Event) -> glib.boolean ---

    @(link_name = "webkit_input_method_context_notify_focus_in")
    input_method_context_notify_focus_in :: proc(context_p: ^InputMethodContext) ---

    @(link_name = "webkit_input_method_context_notify_focus_out")
    input_method_context_notify_focus_out :: proc(context_p: ^InputMethodContext) ---

    @(link_name = "webkit_input_method_context_notify_cursor_area")
    input_method_context_notify_cursor_area :: proc(context_p: ^InputMethodContext, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "webkit_input_method_context_notify_surrounding")
    input_method_context_notify_surrounding :: proc(context_p: ^InputMethodContext, text: cstring, length: i32, cursor_index: glib.uint_, selection_index: glib.uint_) ---

    @(link_name = "webkit_input_method_context_reset")
    input_method_context_reset :: proc(context_p: ^InputMethodContext) ---

    @(link_name = "webkit_input_method_underline_get_type")
    input_method_underline_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_input_method_underline_new")
    input_method_underline_new :: proc(start_offset: glib.uint_, end_offset: glib.uint_) -> ^InputMethodUnderline ---

    @(link_name = "webkit_input_method_underline_copy")
    input_method_underline_copy :: proc(underline: ^InputMethodUnderline) -> ^InputMethodUnderline ---

    @(link_name = "webkit_input_method_underline_free")
    input_method_underline_free :: proc(underline: ^InputMethodUnderline) ---

    @(link_name = "webkit_input_method_underline_set_color")
    input_method_underline_set_color :: proc(underline: ^InputMethodUnderline, rgba: ^gtk.RGBA) ---

    @(link_name = "webkit_input_method_context_get_input_purpose")
    input_method_context_get_input_purpose :: proc(context_p: ^InputMethodContext) -> InputPurpose ---

    @(link_name = "webkit_input_method_context_set_input_purpose")
    input_method_context_set_input_purpose :: proc(context_p: ^InputMethodContext, purpose: InputPurpose) ---

    @(link_name = "webkit_input_method_context_get_input_hints")
    input_method_context_get_input_hints :: proc(context_p: ^InputMethodContext) -> InputHints ---

    @(link_name = "webkit_input_method_context_set_input_hints")
    input_method_context_set_input_hints :: proc(context_p: ^InputMethodContext, hints: InputHints) ---

    @(link_name = "webkit_media_key_system_permission_request_get_type")
    media_key_system_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_media_key_system_permission_get_name")
    media_key_system_permission_get_name :: proc(request: ^MediaKeySystemPermissionRequest) -> cstring ---

    @(link_name = "webkit_memory_pressure_settings_get_type")
    memory_pressure_settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_memory_pressure_settings_new")
    memory_pressure_settings_new :: proc() -> ^MemoryPressureSettings ---

    @(link_name = "webkit_memory_pressure_settings_copy")
    memory_pressure_settings_copy :: proc(settings: ^MemoryPressureSettings) -> ^MemoryPressureSettings ---

    @(link_name = "webkit_memory_pressure_settings_free")
    memory_pressure_settings_free :: proc(settings: ^MemoryPressureSettings) ---

    @(link_name = "webkit_memory_pressure_settings_set_memory_limit")
    memory_pressure_settings_set_memory_limit :: proc(settings: ^MemoryPressureSettings, memory_limit: glib.uint_) ---

    @(link_name = "webkit_memory_pressure_settings_get_memory_limit")
    memory_pressure_settings_get_memory_limit :: proc(settings: ^MemoryPressureSettings) -> glib.uint_ ---

    @(link_name = "webkit_memory_pressure_settings_set_conservative_threshold")
    memory_pressure_settings_set_conservative_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---

    @(link_name = "webkit_memory_pressure_settings_get_conservative_threshold")
    memory_pressure_settings_get_conservative_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---

    @(link_name = "webkit_memory_pressure_settings_set_strict_threshold")
    memory_pressure_settings_set_strict_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---

    @(link_name = "webkit_memory_pressure_settings_get_strict_threshold")
    memory_pressure_settings_get_strict_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---

    @(link_name = "webkit_memory_pressure_settings_set_kill_threshold")
    memory_pressure_settings_set_kill_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---

    @(link_name = "webkit_memory_pressure_settings_get_kill_threshold")
    memory_pressure_settings_get_kill_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---

    @(link_name = "webkit_memory_pressure_settings_set_poll_interval")
    memory_pressure_settings_set_poll_interval :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---

    @(link_name = "webkit_memory_pressure_settings_get_poll_interval")
    memory_pressure_settings_get_poll_interval :: proc(settings: ^MemoryPressureSettings) -> glib.double ---

    @(link_name = "webkit_navigation_action_get_type")
    navigation_action_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_navigation_action_copy")
    navigation_action_copy :: proc(navigation: ^NavigationAction) -> ^NavigationAction ---

    @(link_name = "webkit_navigation_action_free")
    navigation_action_free :: proc(navigation: ^NavigationAction) ---

    @(link_name = "webkit_navigation_action_get_navigation_type")
    navigation_action_get_navigation_type :: proc(navigation: ^NavigationAction) -> NavigationType ---

    @(link_name = "webkit_navigation_action_get_mouse_button")
    navigation_action_get_mouse_button :: proc(navigation: ^NavigationAction) -> glib.uint_ ---

    @(link_name = "webkit_navigation_action_get_modifiers")
    navigation_action_get_modifiers :: proc(navigation: ^NavigationAction) -> glib.uint_ ---

    @(link_name = "webkit_navigation_action_get_request")
    navigation_action_get_request :: proc(navigation: ^NavigationAction) -> ^URIRequest ---

    @(link_name = "webkit_navigation_action_is_user_gesture")
    navigation_action_is_user_gesture :: proc(navigation: ^NavigationAction) -> glib.boolean ---

    @(link_name = "webkit_navigation_action_is_redirect")
    navigation_action_is_redirect :: proc(navigation: ^NavigationAction) -> glib.boolean ---

    @(link_name = "webkit_navigation_action_get_frame_name")
    navigation_action_get_frame_name :: proc(navigation: ^NavigationAction) -> cstring ---

    @(link_name = "webkit_website_policies_get_type")
    website_policies_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_website_policies_new")
    website_policies_new :: proc() -> ^WebsitePolicies ---

    @(link_name = "webkit_website_policies_new_with_policies")
    website_policies_new_with_policies :: proc(first_policy_name: cstring, #c_vararg var_args: ..any) -> ^WebsitePolicies ---

    @(link_name = "webkit_website_policies_get_autoplay_policy")
    website_policies_get_autoplay_policy :: proc(policies: ^WebsitePolicies) -> AutoplayPolicy ---

    @(link_name = "webkit_policy_decision_get_type")
    policy_decision_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_policy_decision_use")
    policy_decision_use :: proc(decision: ^PolicyDecision) ---

    @(link_name = "webkit_policy_decision_use_with_policies")
    policy_decision_use_with_policies :: proc(decision: ^PolicyDecision, policies: ^WebsitePolicies) ---

    @(link_name = "webkit_policy_decision_ignore")
    policy_decision_ignore :: proc(decision: ^PolicyDecision) ---

    @(link_name = "webkit_policy_decision_download")
    policy_decision_download :: proc(decision: ^PolicyDecision) ---

    @(link_name = "webkit_navigation_policy_decision_get_type")
    navigation_policy_decision_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_navigation_policy_decision_get_navigation_action")
    navigation_policy_decision_get_navigation_action :: proc(decision: ^NavigationPolicyDecision) -> ^NavigationAction ---

    @(link_name = "webkit_network_proxy_settings_get_type")
    network_proxy_settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_network_proxy_settings_new")
    network_proxy_settings_new :: proc(default_proxy_uri: cstring, ignore_hosts: [^]cstring) -> ^NetworkProxySettings ---

    @(link_name = "webkit_network_proxy_settings_copy")
    network_proxy_settings_copy :: proc(proxy_settings: ^NetworkProxySettings) -> ^NetworkProxySettings ---

    @(link_name = "webkit_network_proxy_settings_free")
    network_proxy_settings_free :: proc(proxy_settings: ^NetworkProxySettings) ---

    @(link_name = "webkit_network_proxy_settings_add_proxy_for_scheme")
    network_proxy_settings_add_proxy_for_scheme :: proc(proxy_settings: ^NetworkProxySettings, scheme: cstring, proxy_uri: cstring) ---

    @(link_name = "webkit_website_data_get_type")
    website_data_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_website_data_ref")
    website_data_ref :: proc(website_data: ^WebsiteData) -> ^WebsiteData ---

    @(link_name = "webkit_website_data_unref")
    website_data_unref :: proc(website_data: ^WebsiteData) ---

    @(link_name = "webkit_website_data_get_name")
    website_data_get_name :: proc(website_data: ^WebsiteData) -> cstring ---

    @(link_name = "webkit_website_data_get_types")
    website_data_get_types :: proc(website_data: ^WebsiteData) -> WebsiteDataTypes ---

    @(link_name = "webkit_website_data_get_size")
    website_data_get_size :: proc(website_data: ^WebsiteData, types: WebsiteDataTypes) -> glib.uint64 ---

    @(link_name = "webkit_website_data_manager_get_type")
    website_data_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_website_data_manager_is_ephemeral")
    website_data_manager_is_ephemeral :: proc(manager: ^WebsiteDataManager) -> glib.boolean ---

    @(link_name = "webkit_website_data_manager_get_base_data_directory")
    website_data_manager_get_base_data_directory :: proc(manager: ^WebsiteDataManager) -> cstring ---

    @(link_name = "webkit_website_data_manager_get_base_cache_directory")
    website_data_manager_get_base_cache_directory :: proc(manager: ^WebsiteDataManager) -> cstring ---

    @(link_name = "webkit_website_data_manager_set_favicons_enabled")
    website_data_manager_set_favicons_enabled :: proc(manager: ^WebsiteDataManager, enabled: glib.boolean) ---

    @(link_name = "webkit_website_data_manager_get_favicons_enabled")
    website_data_manager_get_favicons_enabled :: proc(manager: ^WebsiteDataManager) -> glib.boolean ---

    @(link_name = "webkit_website_data_manager_get_favicon_database")
    website_data_manager_get_favicon_database :: proc(manager: ^WebsiteDataManager) -> ^FaviconDatabase ---

    @(link_name = "webkit_website_data_manager_fetch")
    website_data_manager_fetch :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_website_data_manager_fetch_finish")
    website_data_manager_fetch_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "webkit_website_data_manager_remove")
    website_data_manager_remove :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, website_data: ^glib.List, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_website_data_manager_remove_finish")
    website_data_manager_remove_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_website_data_manager_clear")
    website_data_manager_clear :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, timespan: glib.TimeSpan, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_website_data_manager_clear_finish")
    website_data_manager_clear_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_itp_first_party_get_type")
    itp_first_party_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_itp_first_party_ref")
    itp_first_party_ref :: proc(itp_first_party: ^ITPFirstParty) -> ^ITPFirstParty ---

    @(link_name = "webkit_itp_first_party_unref")
    itp_first_party_unref :: proc(itp_first_party: ^ITPFirstParty) ---

    @(link_name = "webkit_itp_first_party_get_domain")
    itp_first_party_get_domain :: proc(itp_first_party: ^ITPFirstParty) -> cstring ---

    @(link_name = "webkit_itp_first_party_get_website_data_access_allowed")
    itp_first_party_get_website_data_access_allowed :: proc(itp_first_party: ^ITPFirstParty) -> glib.boolean ---

    @(link_name = "webkit_itp_first_party_get_last_update_time")
    itp_first_party_get_last_update_time :: proc(itp_first_party: ^ITPFirstParty) -> ^glib.DateTime ---

    @(link_name = "webkit_itp_third_party_get_type")
    itp_third_party_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_itp_third_party_ref")
    itp_third_party_ref :: proc(itp_third_party: ^ITPThirdParty) -> ^ITPThirdParty ---

    @(link_name = "webkit_itp_third_party_unref")
    itp_third_party_unref :: proc(itp_third_party: ^ITPThirdParty) ---

    @(link_name = "webkit_itp_third_party_get_domain")
    itp_third_party_get_domain :: proc(itp_third_party: ^ITPThirdParty) -> cstring ---

    @(link_name = "webkit_itp_third_party_get_first_parties")
    itp_third_party_get_first_parties :: proc(itp_third_party: ^ITPThirdParty) -> ^glib.List ---

    @(link_name = "webkit_website_data_manager_get_itp_summary")
    website_data_manager_get_itp_summary :: proc(manager: ^WebsiteDataManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_website_data_manager_get_itp_summary_finish")
    website_data_manager_get_itp_summary_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "webkit_network_session_get_type")
    network_session_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_network_session_get_default")
    network_session_get_default :: proc() -> ^NetworkSession ---

    @(link_name = "webkit_network_session_new")
    network_session_new :: proc(data_directory: cstring, cache_directory: cstring) -> ^NetworkSession ---

    @(link_name = "webkit_network_session_new_ephemeral")
    network_session_new_ephemeral :: proc() -> ^NetworkSession ---

    @(link_name = "webkit_network_session_is_ephemeral")
    network_session_is_ephemeral :: proc(session: ^NetworkSession) -> glib.boolean ---

    @(link_name = "webkit_network_session_get_website_data_manager")
    network_session_get_website_data_manager :: proc(session: ^NetworkSession) -> ^WebsiteDataManager ---

    @(link_name = "webkit_network_session_get_cookie_manager")
    network_session_get_cookie_manager :: proc(session: ^NetworkSession) -> ^CookieManager ---

    @(link_name = "webkit_network_session_set_itp_enabled")
    network_session_set_itp_enabled :: proc(session: ^NetworkSession, enabled: glib.boolean) ---

    @(link_name = "webkit_network_session_get_itp_enabled")
    network_session_get_itp_enabled :: proc(session: ^NetworkSession) -> glib.boolean ---

    @(link_name = "webkit_network_session_set_persistent_credential_storage_enabled")
    network_session_set_persistent_credential_storage_enabled :: proc(session: ^NetworkSession, enabled: glib.boolean) ---

    @(link_name = "webkit_network_session_get_persistent_credential_storage_enabled")
    network_session_get_persistent_credential_storage_enabled :: proc(session: ^NetworkSession) -> glib.boolean ---

    @(link_name = "webkit_network_session_set_tls_errors_policy")
    network_session_set_tls_errors_policy :: proc(session: ^NetworkSession, policy: TLSErrorsPolicy) ---

    @(link_name = "webkit_network_session_get_tls_errors_policy")
    network_session_get_tls_errors_policy :: proc(session: ^NetworkSession) -> TLSErrorsPolicy ---

    @(link_name = "webkit_network_session_allow_tls_certificate_for_host")
    network_session_allow_tls_certificate_for_host :: proc(session: ^NetworkSession, certificate: ^gio.TlsCertificate, host: cstring) ---

    @(link_name = "webkit_network_session_set_proxy_settings")
    network_session_set_proxy_settings :: proc(session: ^NetworkSession, proxy_mode: NetworkProxyMode, proxy_settings: ^NetworkProxySettings) ---

    @(link_name = "webkit_network_session_set_memory_pressure_settings")
    network_session_set_memory_pressure_settings :: proc(settings: ^MemoryPressureSettings) ---

    @(link_name = "webkit_network_session_get_itp_summary")
    network_session_get_itp_summary :: proc(session: ^NetworkSession, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_network_session_get_itp_summary_finish")
    network_session_get_itp_summary_finish :: proc(session: ^NetworkSession, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---

    @(link_name = "webkit_network_session_prefetch_dns")
    network_session_prefetch_dns :: proc(session: ^NetworkSession, hostname: cstring) ---

    @(link_name = "webkit_network_session_download_uri")
    network_session_download_uri :: proc(session: ^NetworkSession, uri: cstring) -> ^Download ---

    @(link_name = "webkit_notification_get_type")
    notification_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_notification_get_id")
    notification_get_id :: proc(notification: ^Notification) -> glib.uint64 ---

    @(link_name = "webkit_notification_get_title")
    notification_get_title :: proc(notification: ^Notification) -> cstring ---

    @(link_name = "webkit_notification_get_body")
    notification_get_body :: proc(notification: ^Notification) -> cstring ---

    @(link_name = "webkit_notification_get_tag")
    notification_get_tag :: proc(notification: ^Notification) -> cstring ---

    @(link_name = "webkit_notification_close")
    notification_close :: proc(notification: ^Notification) ---

    @(link_name = "webkit_notification_clicked")
    notification_clicked :: proc(notification: ^Notification) ---

    @(link_name = "webkit_notification_permission_request_get_type")
    notification_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_option_menu_item_get_type")
    option_menu_item_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_option_menu_item_copy")
    option_menu_item_copy :: proc(item: ^OptionMenuItem) -> ^OptionMenuItem ---

    @(link_name = "webkit_option_menu_item_free")
    option_menu_item_free :: proc(item: ^OptionMenuItem) ---

    @(link_name = "webkit_option_menu_item_get_label")
    option_menu_item_get_label :: proc(item: ^OptionMenuItem) -> cstring ---

    @(link_name = "webkit_option_menu_item_get_tooltip")
    option_menu_item_get_tooltip :: proc(item: ^OptionMenuItem) -> cstring ---

    @(link_name = "webkit_option_menu_item_is_group_label")
    option_menu_item_is_group_label :: proc(item: ^OptionMenuItem) -> glib.boolean ---

    @(link_name = "webkit_option_menu_item_is_group_child")
    option_menu_item_is_group_child :: proc(item: ^OptionMenuItem) -> glib.boolean ---

    @(link_name = "webkit_option_menu_item_is_enabled")
    option_menu_item_is_enabled :: proc(item: ^OptionMenuItem) -> glib.boolean ---

    @(link_name = "webkit_option_menu_item_is_selected")
    option_menu_item_is_selected :: proc(item: ^OptionMenuItem) -> glib.boolean ---

    @(link_name = "webkit_option_menu_get_type")
    option_menu_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_option_menu_get_n_items")
    option_menu_get_n_items :: proc(menu: ^OptionMenu) -> glib.uint_ ---

    @(link_name = "webkit_option_menu_get_item")
    option_menu_get_item :: proc(menu: ^OptionMenu, index: glib.uint_) -> ^OptionMenuItem ---

    @(link_name = "webkit_option_menu_select_item")
    option_menu_select_item :: proc(menu: ^OptionMenu, index: glib.uint_) ---

    @(link_name = "webkit_option_menu_activate_item")
    option_menu_activate_item :: proc(menu: ^OptionMenu, index: glib.uint_) ---

    @(link_name = "webkit_option_menu_close")
    option_menu_close :: proc(menu: ^OptionMenu) ---

    @(link_name = "webkit_option_menu_get_event")
    option_menu_get_event :: proc(menu: ^OptionMenu) -> ^gtk.Event ---

    @(link_name = "webkit_permission_request_get_type")
    permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_permission_request_allow")
    permission_request_allow :: proc(request: ^PermissionRequest) ---

    @(link_name = "webkit_permission_request_deny")
    permission_request_deny :: proc(request: ^PermissionRequest) ---

    @(link_name = "webkit_permission_state_query_get_type")
    permission_state_query_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_permission_state_query_ref")
    permission_state_query_ref :: proc(query: ^PermissionStateQuery) -> ^PermissionStateQuery ---

    @(link_name = "webkit_permission_state_query_unref")
    permission_state_query_unref :: proc(query: ^PermissionStateQuery) ---

    @(link_name = "webkit_permission_state_query_get_name")
    permission_state_query_get_name :: proc(query: ^PermissionStateQuery) -> cstring ---

    @(link_name = "webkit_permission_state_query_get_security_origin")
    permission_state_query_get_security_origin :: proc(query: ^PermissionStateQuery) -> ^SecurityOrigin ---

    @(link_name = "webkit_permission_state_query_finish")
    permission_state_query_finish :: proc(query: ^PermissionStateQuery, state: PermissionState) ---

    @(link_name = "webkit_pointer_lock_permission_request_get_type")
    pointer_lock_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_script_dialog_get_type")
    script_dialog_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_script_dialog_ref")
    script_dialog_ref :: proc(dialog: ^ScriptDialog) -> ^ScriptDialog ---

    @(link_name = "webkit_script_dialog_unref")
    script_dialog_unref :: proc(dialog: ^ScriptDialog) ---

    @(link_name = "webkit_script_dialog_get_dialog_type")
    script_dialog_get_dialog_type :: proc(dialog: ^ScriptDialog) -> ScriptDialogType ---

    @(link_name = "webkit_script_dialog_get_message")
    script_dialog_get_message :: proc(dialog: ^ScriptDialog) -> cstring ---

    @(link_name = "webkit_script_dialog_confirm_set_confirmed")
    script_dialog_confirm_set_confirmed :: proc(dialog: ^ScriptDialog, confirmed: glib.boolean) ---

    @(link_name = "webkit_script_dialog_prompt_get_default_text")
    script_dialog_prompt_get_default_text :: proc(dialog: ^ScriptDialog) -> cstring ---

    @(link_name = "webkit_script_dialog_prompt_set_text")
    script_dialog_prompt_set_text :: proc(dialog: ^ScriptDialog, text: cstring) ---

    @(link_name = "webkit_script_dialog_close")
    script_dialog_close :: proc(dialog: ^ScriptDialog) ---

    @(link_name = "webkit_settings_get_type")
    settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_settings_new")
    settings_new :: proc() -> ^Settings ---

    @(link_name = "webkit_settings_new_with_settings")
    settings_new_with_settings :: proc(first_setting_name: cstring, #c_vararg var_args: ..any) -> ^Settings ---

    @(link_name = "webkit_settings_get_enable_javascript")
    settings_get_enable_javascript :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_javascript")
    settings_set_enable_javascript :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_auto_load_images")
    settings_get_auto_load_images :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_auto_load_images")
    settings_set_auto_load_images :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_load_icons_ignoring_image_load_setting")
    settings_get_load_icons_ignoring_image_load_setting :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_load_icons_ignoring_image_load_setting")
    settings_set_load_icons_ignoring_image_load_setting :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_offline_web_application_cache")
    settings_get_enable_offline_web_application_cache :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_offline_web_application_cache")
    settings_set_enable_offline_web_application_cache :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_html5_local_storage")
    settings_get_enable_html5_local_storage :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_html5_local_storage")
    settings_set_enable_html5_local_storage :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_html5_database")
    settings_get_enable_html5_database :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_html5_database")
    settings_set_enable_html5_database :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_javascript_can_open_windows_automatically")
    settings_get_javascript_can_open_windows_automatically :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_javascript_can_open_windows_automatically")
    settings_set_javascript_can_open_windows_automatically :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_hyperlink_auditing")
    settings_get_enable_hyperlink_auditing :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_hyperlink_auditing")
    settings_set_enable_hyperlink_auditing :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_default_font_family")
    settings_get_default_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_default_font_family")
    settings_set_default_font_family :: proc(settings: ^Settings, default_font_family: cstring) ---

    @(link_name = "webkit_settings_get_monospace_font_family")
    settings_get_monospace_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_monospace_font_family")
    settings_set_monospace_font_family :: proc(settings: ^Settings, monospace_font_family: cstring) ---

    @(link_name = "webkit_settings_get_serif_font_family")
    settings_get_serif_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_serif_font_family")
    settings_set_serif_font_family :: proc(settings: ^Settings, serif_font_family: cstring) ---

    @(link_name = "webkit_settings_get_sans_serif_font_family")
    settings_get_sans_serif_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_sans_serif_font_family")
    settings_set_sans_serif_font_family :: proc(settings: ^Settings, sans_serif_font_family: cstring) ---

    @(link_name = "webkit_settings_get_cursive_font_family")
    settings_get_cursive_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_cursive_font_family")
    settings_set_cursive_font_family :: proc(settings: ^Settings, cursive_font_family: cstring) ---

    @(link_name = "webkit_settings_get_fantasy_font_family")
    settings_get_fantasy_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_fantasy_font_family")
    settings_set_fantasy_font_family :: proc(settings: ^Settings, fantasy_font_family: cstring) ---

    @(link_name = "webkit_settings_get_pictograph_font_family")
    settings_get_pictograph_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_pictograph_font_family")
    settings_set_pictograph_font_family :: proc(settings: ^Settings, pictograph_font_family: cstring) ---

    @(link_name = "webkit_settings_get_math_font_family")
    settings_get_math_font_family :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_math_font_family")
    settings_set_math_font_family :: proc(settings: ^Settings, math_font_family: cstring) ---

    @(link_name = "webkit_settings_get_default_font_size")
    settings_get_default_font_size :: proc(settings: ^Settings) -> glib.uint32 ---

    @(link_name = "webkit_settings_set_default_font_size")
    settings_set_default_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---

    @(link_name = "webkit_settings_get_default_monospace_font_size")
    settings_get_default_monospace_font_size :: proc(settings: ^Settings) -> glib.uint32 ---

    @(link_name = "webkit_settings_set_default_monospace_font_size")
    settings_set_default_monospace_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---

    @(link_name = "webkit_settings_get_minimum_font_size")
    settings_get_minimum_font_size :: proc(settings: ^Settings) -> glib.uint32 ---

    @(link_name = "webkit_settings_set_minimum_font_size")
    settings_set_minimum_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---

    @(link_name = "webkit_settings_get_default_charset")
    settings_get_default_charset :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_default_charset")
    settings_set_default_charset :: proc(settings: ^Settings, default_charset: cstring) ---

    @(link_name = "webkit_settings_get_enable_developer_extras")
    settings_get_enable_developer_extras :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_developer_extras")
    settings_set_enable_developer_extras :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_resizable_text_areas")
    settings_get_enable_resizable_text_areas :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_resizable_text_areas")
    settings_set_enable_resizable_text_areas :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_tabs_to_links")
    settings_get_enable_tabs_to_links :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_tabs_to_links")
    settings_set_enable_tabs_to_links :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_dns_prefetching")
    settings_get_enable_dns_prefetching :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_dns_prefetching")
    settings_set_enable_dns_prefetching :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_caret_browsing")
    settings_get_enable_caret_browsing :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_caret_browsing")
    settings_set_enable_caret_browsing :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_fullscreen")
    settings_get_enable_fullscreen :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_fullscreen")
    settings_set_enable_fullscreen :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_print_backgrounds")
    settings_get_print_backgrounds :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_print_backgrounds")
    settings_set_print_backgrounds :: proc(settings: ^Settings, print_backgrounds: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_webaudio")
    settings_get_enable_webaudio :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_webaudio")
    settings_set_enable_webaudio :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_webgl")
    settings_get_enable_webgl :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_webgl")
    settings_set_enable_webgl :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_set_allow_modal_dialogs")
    settings_set_allow_modal_dialogs :: proc(settings: ^Settings, allowed: glib.boolean) ---

    @(link_name = "webkit_settings_get_allow_modal_dialogs")
    settings_get_allow_modal_dialogs :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_zoom_text_only")
    settings_set_zoom_text_only :: proc(settings: ^Settings, zoom_text_only: glib.boolean) ---

    @(link_name = "webkit_settings_get_zoom_text_only")
    settings_get_zoom_text_only :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_get_javascript_can_access_clipboard")
    settings_get_javascript_can_access_clipboard :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_javascript_can_access_clipboard")
    settings_set_javascript_can_access_clipboard :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_media_playback_requires_user_gesture")
    settings_get_media_playback_requires_user_gesture :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_media_playback_requires_user_gesture")
    settings_set_media_playback_requires_user_gesture :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_media_playback_allows_inline")
    settings_get_media_playback_allows_inline :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_media_playback_allows_inline")
    settings_set_media_playback_allows_inline :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_draw_compositing_indicators")
    settings_get_draw_compositing_indicators :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_draw_compositing_indicators")
    settings_set_draw_compositing_indicators :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_site_specific_quirks")
    settings_get_enable_site_specific_quirks :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_site_specific_quirks")
    settings_set_enable_site_specific_quirks :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_page_cache")
    settings_get_enable_page_cache :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_page_cache")
    settings_set_enable_page_cache :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_user_agent")
    settings_get_user_agent :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_user_agent")
    settings_set_user_agent :: proc(settings: ^Settings, user_agent: cstring) ---

    @(link_name = "webkit_settings_set_user_agent_with_application_details")
    settings_set_user_agent_with_application_details :: proc(settings: ^Settings, application_name: cstring, application_version: cstring) ---

    @(link_name = "webkit_settings_get_enable_smooth_scrolling")
    settings_get_enable_smooth_scrolling :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_smooth_scrolling")
    settings_set_enable_smooth_scrolling :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_2d_canvas_acceleration")
    settings_get_enable_2d_canvas_acceleration :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_2d_canvas_acceleration")
    settings_set_enable_2d_canvas_acceleration :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_write_console_messages_to_stdout")
    settings_get_enable_write_console_messages_to_stdout :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_write_console_messages_to_stdout")
    settings_set_enable_write_console_messages_to_stdout :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_media_stream")
    settings_get_enable_media_stream :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_media_stream")
    settings_set_enable_media_stream :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_mock_capture_devices")
    settings_get_enable_mock_capture_devices :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_mock_capture_devices")
    settings_set_enable_mock_capture_devices :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_spatial_navigation")
    settings_get_enable_spatial_navigation :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_spatial_navigation")
    settings_set_enable_spatial_navigation :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_mediasource")
    settings_get_enable_mediasource :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_mediasource")
    settings_set_enable_mediasource :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_encrypted_media")
    settings_get_enable_encrypted_media :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_encrypted_media")
    settings_set_enable_encrypted_media :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_media_capabilities")
    settings_get_enable_media_capabilities :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_media_capabilities")
    settings_set_enable_media_capabilities :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_allow_file_access_from_file_urls")
    settings_get_allow_file_access_from_file_urls :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_allow_file_access_from_file_urls")
    settings_set_allow_file_access_from_file_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---

    @(link_name = "webkit_settings_get_allow_universal_access_from_file_urls")
    settings_get_allow_universal_access_from_file_urls :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_allow_universal_access_from_file_urls")
    settings_set_allow_universal_access_from_file_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---

    @(link_name = "webkit_settings_get_allow_top_navigation_to_data_urls")
    settings_get_allow_top_navigation_to_data_urls :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_allow_top_navigation_to_data_urls")
    settings_set_allow_top_navigation_to_data_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---

    @(link_name = "webkit_settings_get_hardware_acceleration_policy")
    settings_get_hardware_acceleration_policy :: proc(settings: ^Settings) -> HardwareAccelerationPolicy ---

    @(link_name = "webkit_settings_set_hardware_acceleration_policy")
    settings_set_hardware_acceleration_policy :: proc(settings: ^Settings, policy: HardwareAccelerationPolicy) ---

    @(link_name = "webkit_settings_get_enable_back_forward_navigation_gestures")
    settings_get_enable_back_forward_navigation_gestures :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_back_forward_navigation_gestures")
    settings_set_enable_back_forward_navigation_gestures :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_font_size_to_points")
    settings_font_size_to_points :: proc(pixels: glib.uint32) -> glib.uint32 ---

    @(link_name = "webkit_settings_font_size_to_pixels")
    settings_font_size_to_pixels :: proc(points: glib.uint32) -> glib.uint32 ---

    @(link_name = "webkit_settings_get_enable_javascript_markup")
    settings_get_enable_javascript_markup :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_javascript_markup")
    settings_set_enable_javascript_markup :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_enable_media")
    settings_get_enable_media :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_media")
    settings_set_enable_media :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_media_content_types_requiring_hardware_support")
    settings_get_media_content_types_requiring_hardware_support :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_media_content_types_requiring_hardware_support")
    settings_set_media_content_types_requiring_hardware_support :: proc(settings: ^Settings, content_types: cstring) ---

    @(link_name = "webkit_settings_get_enable_webrtc")
    settings_get_enable_webrtc :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_enable_webrtc")
    settings_set_enable_webrtc :: proc(settings: ^Settings, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_disable_web_security")
    settings_get_disable_web_security :: proc(settings: ^Settings) -> glib.boolean ---

    @(link_name = "webkit_settings_set_disable_web_security")
    settings_set_disable_web_security :: proc(settings: ^Settings, disabled: glib.boolean) ---

    @(link_name = "webkit_settings_set_feature_enabled")
    settings_set_feature_enabled :: proc(settings: ^Settings, feature: ^Feature, enabled: glib.boolean) ---

    @(link_name = "webkit_settings_get_feature_enabled")
    settings_get_feature_enabled :: proc(settings: ^Settings, feature: ^Feature) -> glib.boolean ---

    @(link_name = "webkit_settings_get_all_features")
    settings_get_all_features :: proc() -> ^FeatureList ---

    @(link_name = "webkit_settings_get_experimental_features")
    settings_get_experimental_features :: proc() -> ^FeatureList ---

    @(link_name = "webkit_settings_get_development_features")
    settings_get_development_features :: proc() -> ^FeatureList ---

    @(link_name = "webkit_settings_apply_from_key_file")
    settings_apply_from_key_file :: proc(settings: ^Settings, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_settings_get_webrtc_udp_ports_range")
    settings_get_webrtc_udp_ports_range :: proc(settings: ^Settings) -> cstring ---

    @(link_name = "webkit_settings_set_webrtc_udp_ports_range")
    settings_set_webrtc_udp_ports_range :: proc(settings: ^Settings, udp_port_range: cstring) ---

    @(link_name = "webkit_user_style_sheet_get_type")
    user_style_sheet_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_style_sheet_ref")
    user_style_sheet_ref :: proc(user_style_sheet: ^UserStyleSheet) -> ^UserStyleSheet ---

    @(link_name = "webkit_user_style_sheet_unref")
    user_style_sheet_unref :: proc(user_style_sheet: ^UserStyleSheet) ---

    @(link_name = "webkit_user_style_sheet_new")
    user_style_sheet_new :: proc(source: cstring, injected_frames: UserContentInjectedFrames, level: UserStyleLevel, allow_list: ^cstring, block_list: ^cstring) -> ^UserStyleSheet ---

    @(link_name = "webkit_user_style_sheet_new_for_world")
    user_style_sheet_new_for_world :: proc(source: cstring, injected_frames: UserContentInjectedFrames, level: UserStyleLevel, world_name: cstring, allow_list: ^cstring, block_list: ^cstring) -> ^UserStyleSheet ---

    @(link_name = "webkit_user_script_get_type")
    user_script_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_script_ref")
    user_script_ref :: proc(user_script: ^UserScript) -> ^UserScript ---

    @(link_name = "webkit_user_script_unref")
    user_script_unref :: proc(user_script: ^UserScript) ---

    @(link_name = "webkit_user_script_new")
    user_script_new :: proc(source: cstring, injected_frames: UserContentInjectedFrames, injection_time: UserScriptInjectionTime, allow_list: ^cstring, block_list: ^cstring) -> ^UserScript ---

    @(link_name = "webkit_user_script_new_for_world")
    user_script_new_for_world :: proc(source: cstring, injected_frames: UserContentInjectedFrames, injection_time: UserScriptInjectionTime, world_name: cstring, allow_list: ^cstring, block_list: ^cstring) -> ^UserScript ---

    @(link_name = "webkit_user_content_filter_get_type")
    user_content_filter_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_content_filter_get_identifier")
    user_content_filter_get_identifier :: proc(user_content_filter: ^UserContentFilter) -> cstring ---

    @(link_name = "webkit_user_content_filter_ref")
    user_content_filter_ref :: proc(user_content_filter: ^UserContentFilter) -> ^UserContentFilter ---

    @(link_name = "webkit_user_content_filter_unref")
    user_content_filter_unref :: proc(user_content_filter: ^UserContentFilter) ---

    @(link_name = "webkit_user_content_manager_get_type")
    user_content_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_content_manager_new")
    user_content_manager_new :: proc() -> ^UserContentManager ---

    @(link_name = "webkit_user_content_manager_add_style_sheet")
    user_content_manager_add_style_sheet :: proc(manager: ^UserContentManager, stylesheet: ^UserStyleSheet) ---

    @(link_name = "webkit_user_content_manager_remove_style_sheet")
    user_content_manager_remove_style_sheet :: proc(manager: ^UserContentManager, stylesheet: ^UserStyleSheet) ---

    @(link_name = "webkit_user_content_manager_remove_all_style_sheets")
    user_content_manager_remove_all_style_sheets :: proc(manager: ^UserContentManager) ---

    @(link_name = "webkit_user_content_manager_register_script_message_handler")
    user_content_manager_register_script_message_handler :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) -> glib.boolean ---

    @(link_name = "webkit_user_content_manager_unregister_script_message_handler")
    user_content_manager_unregister_script_message_handler :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) ---

    @(link_name = "webkit_user_content_manager_register_script_message_handler_with_reply")
    user_content_manager_register_script_message_handler_with_reply :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) -> glib.boolean ---

    @(link_name = "webkit_user_content_manager_add_script")
    user_content_manager_add_script :: proc(manager: ^UserContentManager, script: ^UserScript) ---

    @(link_name = "webkit_user_content_manager_remove_script")
    user_content_manager_remove_script :: proc(manager: ^UserContentManager, script: ^UserScript) ---

    @(link_name = "webkit_user_content_manager_remove_all_scripts")
    user_content_manager_remove_all_scripts :: proc(manager: ^UserContentManager) ---

    @(link_name = "webkit_user_content_manager_add_filter")
    user_content_manager_add_filter :: proc(manager: ^UserContentManager, filter: ^UserContentFilter) ---

    @(link_name = "webkit_user_content_manager_remove_filter")
    user_content_manager_remove_filter :: proc(manager: ^UserContentManager, filter: ^UserContentFilter) ---

    @(link_name = "webkit_user_content_manager_remove_filter_by_id")
    user_content_manager_remove_filter_by_id :: proc(manager: ^UserContentManager, filter_id: cstring) ---

    @(link_name = "webkit_user_content_manager_remove_all_filters")
    user_content_manager_remove_all_filters :: proc(manager: ^UserContentManager) ---

    @(link_name = "webkit_script_message_reply_get_type")
    script_message_reply_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_script_message_reply_ref")
    script_message_reply_ref :: proc(script_message_reply: ^ScriptMessageReply) -> ^ScriptMessageReply ---

    @(link_name = "webkit_script_message_reply_unref")
    script_message_reply_unref :: proc(script_message_reply: ^ScriptMessageReply) ---

    @(link_name = "webkit_script_message_reply_return_value")
    script_message_reply_return_value :: proc(script_message_reply: ^ScriptMessageReply, reply_value: ^jsc.Value) ---

    @(link_name = "webkit_script_message_reply_return_error_message")
    script_message_reply_return_error_message :: proc(script_message_reply: ^ScriptMessageReply, error_message: cstring) ---

    @(link_name = "webkit_user_message_get_type")
    user_message_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_message_error_quark")
    user_message_error_quark :: proc() -> glib.Quark ---

    @(link_name = "webkit_user_message_new")
    user_message_new :: proc(name: cstring, parameters: ^glib.Variant) -> ^UserMessage ---

    @(link_name = "webkit_user_message_new_with_fd_list")
    user_message_new_with_fd_list :: proc(name: cstring, parameters: ^glib.Variant, fd_list: ^gio.UnixFDList) -> ^UserMessage ---

    @(link_name = "webkit_user_message_get_name")
    user_message_get_name :: proc(message: ^UserMessage) -> cstring ---

    @(link_name = "webkit_user_message_get_parameters")
    user_message_get_parameters :: proc(message: ^UserMessage) -> ^glib.Variant ---

    @(link_name = "webkit_user_message_get_fd_list")
    user_message_get_fd_list :: proc(message: ^UserMessage) -> ^gio.UnixFDList ---

    @(link_name = "webkit_user_message_send_reply")
    user_message_send_reply :: proc(message: ^UserMessage, reply: ^UserMessage) ---

    @(link_name = "webkit_security_manager_get_type")
    security_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_local")
    security_manager_register_uri_scheme_as_local :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_local")
    security_manager_uri_scheme_is_local :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_no_access")
    security_manager_register_uri_scheme_as_no_access :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_no_access")
    security_manager_uri_scheme_is_no_access :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_display_isolated")
    security_manager_register_uri_scheme_as_display_isolated :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_display_isolated")
    security_manager_uri_scheme_is_display_isolated :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_secure")
    security_manager_register_uri_scheme_as_secure :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_secure")
    security_manager_uri_scheme_is_secure :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_cors_enabled")
    security_manager_register_uri_scheme_as_cors_enabled :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_cors_enabled")
    security_manager_uri_scheme_is_cors_enabled :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_security_manager_register_uri_scheme_as_empty_document")
    security_manager_register_uri_scheme_as_empty_document :: proc(security_manager: ^SecurityManager, scheme: cstring) ---

    @(link_name = "webkit_security_manager_uri_scheme_is_empty_document")
    security_manager_uri_scheme_is_empty_document :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---

    @(link_name = "webkit_uri_scheme_response_get_type")
    uri_scheme_response_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_uri_scheme_response_new")
    uri_scheme_response_new :: proc(input_stream: ^gio.InputStream, stream_length: glib.int64) -> ^URISchemeResponse ---

    @(link_name = "webkit_uri_scheme_response_set_status")
    uri_scheme_response_set_status :: proc(response: ^URISchemeResponse, status_code: glib.uint_, reason_phrase: cstring) ---

    @(link_name = "webkit_uri_scheme_response_set_content_type")
    uri_scheme_response_set_content_type :: proc(response: ^URISchemeResponse, content_type: cstring) ---

    @(link_name = "webkit_uri_scheme_response_set_http_headers")
    uri_scheme_response_set_http_headers :: proc(response: ^URISchemeResponse, headers: ^soup.MessageHeaders) ---

    @(link_name = "webkit_uri_scheme_request_get_type")
    uri_scheme_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_uri_scheme_request_get_scheme")
    uri_scheme_request_get_scheme :: proc(request: ^URISchemeRequest) -> cstring ---

    @(link_name = "webkit_uri_scheme_request_get_uri")
    uri_scheme_request_get_uri :: proc(request: ^URISchemeRequest) -> cstring ---

    @(link_name = "webkit_uri_scheme_request_get_path")
    uri_scheme_request_get_path :: proc(request: ^URISchemeRequest) -> cstring ---

    @(link_name = "webkit_uri_scheme_request_get_web_view")
    uri_scheme_request_get_web_view :: proc(request: ^URISchemeRequest) -> ^WebView ---

    @(link_name = "webkit_uri_scheme_request_get_http_method")
    uri_scheme_request_get_http_method :: proc(request: ^URISchemeRequest) -> cstring ---

    @(link_name = "webkit_uri_scheme_request_get_http_headers")
    uri_scheme_request_get_http_headers :: proc(request: ^URISchemeRequest) -> ^soup.MessageHeaders ---

    @(link_name = "webkit_uri_scheme_request_get_http_body")
    uri_scheme_request_get_http_body :: proc(request: ^URISchemeRequest) -> ^gio.InputStream ---

    @(link_name = "webkit_uri_scheme_request_finish")
    uri_scheme_request_finish :: proc(request: ^URISchemeRequest, stream: ^gio.InputStream, stream_length: glib.int64, content_type: cstring) ---

    @(link_name = "webkit_uri_scheme_request_finish_with_response")
    uri_scheme_request_finish_with_response :: proc(request: ^URISchemeRequest, response: ^URISchemeResponse) ---

    @(link_name = "webkit_uri_scheme_request_finish_error")
    uri_scheme_request_finish_error :: proc(request: ^URISchemeRequest, error: ^glib.Error) ---

    @(link_name = "webkit_web_context_get_type")
    web_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_context_get_default")
    web_context_get_default :: proc() -> ^WebContext ---

    @(link_name = "webkit_web_context_new")
    web_context_new :: proc() -> ^WebContext ---

    @(link_name = "webkit_web_context_is_automation_allowed")
    web_context_is_automation_allowed :: proc(context_p: ^WebContext) -> glib.boolean ---

    @(link_name = "webkit_web_context_set_automation_allowed")
    web_context_set_automation_allowed :: proc(context_p: ^WebContext, allowed: glib.boolean) ---

    @(link_name = "webkit_web_context_get_network_session_for_automation")
    web_context_get_network_session_for_automation :: proc(context_p: ^WebContext) -> ^NetworkSession ---

    @(link_name = "webkit_web_context_set_cache_model")
    web_context_set_cache_model :: proc(context_p: ^WebContext, cache_model: CacheModel) ---

    @(link_name = "webkit_web_context_get_cache_model")
    web_context_get_cache_model :: proc(context_p: ^WebContext) -> CacheModel ---

    @(link_name = "webkit_web_context_get_geolocation_manager")
    web_context_get_geolocation_manager :: proc(context_p: ^WebContext) -> ^eolocationManager ---

    @(link_name = "webkit_web_context_get_security_manager")
    web_context_get_security_manager :: proc(context_p: ^WebContext) -> ^SecurityManager ---

    @(link_name = "webkit_web_context_register_uri_scheme")
    web_context_register_uri_scheme :: proc(context_p: ^WebContext, scheme: cstring, callback: URISchemeRequestCallback, user_data: glib.pointer, user_data_destroy_func: glib.DestroyNotify) ---

    @(link_name = "webkit_web_context_add_path_to_sandbox")
    web_context_add_path_to_sandbox :: proc(context_p: ^WebContext, path: cstring, read_only: glib.boolean) ---

    @(link_name = "webkit_web_context_get_spell_checking_enabled")
    web_context_get_spell_checking_enabled :: proc(context_p: ^WebContext) -> glib.boolean ---

    @(link_name = "webkit_web_context_set_spell_checking_enabled")
    web_context_set_spell_checking_enabled :: proc(context_p: ^WebContext, enabled: glib.boolean) ---

    @(link_name = "webkit_web_context_get_spell_checking_languages")
    web_context_get_spell_checking_languages :: proc(context_p: ^WebContext) -> ^cstring ---

    @(link_name = "webkit_web_context_set_spell_checking_languages")
    web_context_set_spell_checking_languages :: proc(context_p: ^WebContext, languages: [^]cstring) ---

    @(link_name = "webkit_web_context_set_preferred_languages")
    web_context_set_preferred_languages :: proc(context_p: ^WebContext, languages: [^]cstring) ---

    @(link_name = "webkit_web_context_set_web_process_extensions_directory")
    web_context_set_web_process_extensions_directory :: proc(context_p: ^WebContext, directory: cstring) ---

    @(link_name = "webkit_web_context_set_web_process_extensions_initialization_user_data")
    web_context_set_web_process_extensions_initialization_user_data :: proc(context_p: ^WebContext, user_data: ^glib.Variant) ---

    @(link_name = "webkit_web_context_initialize_notification_permissions")
    web_context_initialize_notification_permissions :: proc(context_p: ^WebContext, allowed_origins: ^glib.List, disallowed_origins: ^glib.List) ---

    @(link_name = "webkit_web_context_send_message_to_all_extensions")
    web_context_send_message_to_all_extensions :: proc(context_p: ^WebContext, message: ^UserMessage) ---

    @(link_name = "webkit_web_context_get_time_zone_override")
    web_context_get_time_zone_override :: proc(context_p: ^WebContext) -> cstring ---

    @(link_name = "webkit_web_resource_get_type")
    web_resource_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_resource_get_uri")
    web_resource_get_uri :: proc(resource: ^WebResource) -> cstring ---

    @(link_name = "webkit_web_resource_get_response")
    web_resource_get_response :: proc(resource: ^WebResource) -> ^URIResponse ---

    @(link_name = "webkit_web_resource_get_data")
    web_resource_get_data :: proc(resource: ^WebResource, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_resource_get_data_finish")
    web_resource_get_data_finish :: proc(resource: ^WebResource, result: ^gio.AsyncResult, length: ^glib.size, error: ^^glib.Error) -> ^glib.uchar ---

    @(link_name = "webkit_web_view_session_state_get_type")
    web_view_session_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_view_session_state_new")
    web_view_session_state_new :: proc(data: ^glib.Bytes) -> ^WebViewSessionState ---

    @(link_name = "webkit_web_view_session_state_ref")
    web_view_session_state_ref :: proc(state: ^WebViewSessionState) -> ^WebViewSessionState ---

    @(link_name = "webkit_web_view_session_state_unref")
    web_view_session_state_unref :: proc(state: ^WebViewSessionState) ---

    @(link_name = "webkit_web_view_session_state_serialize")
    web_view_session_state_serialize :: proc(state: ^WebViewSessionState) -> ^glib.Bytes ---

    @(link_name = "webkit_window_properties_get_type")
    window_properties_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_window_properties_get_geometry")
    window_properties_get_geometry :: proc(window_properties: ^WindowProperties, geometry: ^gtk.Rectangle) ---

    @(link_name = "webkit_window_properties_get_toolbar_visible")
    window_properties_get_toolbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_statusbar_visible")
    window_properties_get_statusbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_scrollbars_visible")
    window_properties_get_scrollbars_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_menubar_visible")
    window_properties_get_menubar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_locationbar_visible")
    window_properties_get_locationbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_resizable")
    window_properties_get_resizable :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_window_properties_get_fullscreen")
    window_properties_get_fullscreen :: proc(window_properties: ^WindowProperties) -> glib.boolean ---

    @(link_name = "webkit_web_view_base_get_type")
    web_view_base_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_inspector_get_type")
    web_inspector_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_inspector_get_web_view")
    web_inspector_get_web_view :: proc(inspector: ^WebInspector) -> ^WebViewBase ---

    @(link_name = "webkit_web_inspector_get_inspected_uri")
    web_inspector_get_inspected_uri :: proc(inspector: ^WebInspector) -> cstring ---

    @(link_name = "webkit_web_inspector_is_attached")
    web_inspector_is_attached :: proc(inspector: ^WebInspector) -> glib.boolean ---

    @(link_name = "webkit_web_inspector_attach")
    web_inspector_attach :: proc(inspector: ^WebInspector) ---

    @(link_name = "webkit_web_inspector_detach")
    web_inspector_detach :: proc(inspector: ^WebInspector) ---

    @(link_name = "webkit_web_inspector_show")
    web_inspector_show :: proc(inspector: ^WebInspector) ---

    @(link_name = "webkit_web_inspector_close")
    web_inspector_close :: proc(inspector: ^WebInspector) ---

    @(link_name = "webkit_web_inspector_get_attached_height")
    web_inspector_get_attached_height :: proc(inspector: ^WebInspector) -> glib.uint_ ---

    @(link_name = "webkit_web_inspector_get_can_attach")
    web_inspector_get_can_attach :: proc(inspector: ^WebInspector) -> glib.boolean ---

    @(link_name = "webkit_web_view_get_type")
    web_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_view_new")
    web_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "webkit_web_view_is_controlled_by_automation")
    web_view_is_controlled_by_automation :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_get_automation_presentation_type")
    web_view_get_automation_presentation_type :: proc(web_view: ^WebView) -> AutomationBrowsingContextPresentation ---

    @(link_name = "webkit_web_view_get_network_session")
    web_view_get_network_session :: proc(web_view: ^WebView) -> ^NetworkSession ---

    @(link_name = "webkit_web_view_get_context")
    web_view_get_context :: proc(web_view: ^WebView) -> ^WebContext ---

    @(link_name = "webkit_web_view_try_close")
    web_view_try_close :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_load_uri")
    web_view_load_uri :: proc(web_view: ^WebView, uri: cstring) ---

    @(link_name = "webkit_web_view_load_html")
    web_view_load_html :: proc(web_view: ^WebView, content: cstring, base_uri: cstring) ---

    @(link_name = "webkit_web_view_load_alternate_html")
    web_view_load_alternate_html :: proc(web_view: ^WebView, content: cstring, content_uri: cstring, base_uri: cstring) ---

    @(link_name = "webkit_web_view_load_plain_text")
    web_view_load_plain_text :: proc(web_view: ^WebView, plain_text: cstring) ---

    @(link_name = "webkit_web_view_load_bytes")
    web_view_load_bytes :: proc(web_view: ^WebView, bytes: ^glib.Bytes, mime_type: cstring, encoding: cstring, base_uri: cstring) ---

    @(link_name = "webkit_web_view_load_request")
    web_view_load_request :: proc(web_view: ^WebView, request: ^URIRequest) ---

    @(link_name = "webkit_web_view_stop_loading")
    web_view_stop_loading :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_is_loading")
    web_view_is_loading :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_is_playing_audio")
    web_view_is_playing_audio :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_set_is_muted")
    web_view_set_is_muted :: proc(web_view: ^WebView, muted: glib.boolean) ---

    @(link_name = "webkit_web_view_get_is_muted")
    web_view_get_is_muted :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_get_page_id")
    web_view_get_page_id :: proc(web_view: ^WebView) -> glib.uint64 ---

    @(link_name = "webkit_web_view_get_title")
    web_view_get_title :: proc(web_view: ^WebView) -> cstring ---

    @(link_name = "webkit_web_view_reload")
    web_view_reload :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_reload_bypass_cache")
    web_view_reload_bypass_cache :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_get_estimated_load_progress")
    web_view_get_estimated_load_progress :: proc(web_view: ^WebView) -> glib.double ---

    @(link_name = "webkit_web_view_go_back")
    web_view_go_back :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_can_go_back")
    web_view_can_go_back :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_go_forward")
    web_view_go_forward :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_can_go_forward")
    web_view_can_go_forward :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_get_back_forward_list")
    web_view_get_back_forward_list :: proc(web_view: ^WebView) -> ^BackForwardList ---

    @(link_name = "webkit_web_view_go_to_back_forward_list_item")
    web_view_go_to_back_forward_list_item :: proc(web_view: ^WebView, list_item: ^BackForwardListItem) ---

    @(link_name = "webkit_web_view_get_uri")
    web_view_get_uri :: proc(web_view: ^WebView) -> cstring ---

    @(link_name = "webkit_web_view_get_favicon")
    web_view_get_favicon :: proc(web_view: ^WebView) -> ^gtk.Texture ---

    @(link_name = "webkit_web_view_get_custom_charset")
    web_view_get_custom_charset :: proc(web_view: ^WebView) -> cstring ---

    @(link_name = "webkit_web_view_set_custom_charset")
    web_view_set_custom_charset :: proc(web_view: ^WebView, charset: cstring) ---

    @(link_name = "webkit_web_view_set_settings")
    web_view_set_settings :: proc(web_view: ^WebView, settings: ^Settings) ---

    @(link_name = "webkit_web_view_get_settings")
    web_view_get_settings :: proc(web_view: ^WebView) -> ^Settings ---

    @(link_name = "webkit_web_view_get_window_properties")
    web_view_get_window_properties :: proc(web_view: ^WebView) -> ^WindowProperties ---

    @(link_name = "webkit_web_view_set_zoom_level")
    web_view_set_zoom_level :: proc(web_view: ^WebView, zoom_level: glib.double) ---

    @(link_name = "webkit_web_view_get_zoom_level")
    web_view_get_zoom_level :: proc(web_view: ^WebView) -> glib.double ---

    @(link_name = "webkit_web_view_can_execute_editing_command")
    web_view_can_execute_editing_command :: proc(web_view: ^WebView, command: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_can_execute_editing_command_finish")
    web_view_can_execute_editing_command_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_web_view_execute_editing_command")
    web_view_execute_editing_command :: proc(web_view: ^WebView, command: cstring) ---

    @(link_name = "webkit_web_view_execute_editing_command_with_argument")
    web_view_execute_editing_command_with_argument :: proc(web_view: ^WebView, command: cstring, argument: cstring) ---

    @(link_name = "webkit_web_view_get_find_controller")
    web_view_get_find_controller :: proc(web_view: ^WebView) -> ^FindController ---

    @(link_name = "webkit_web_view_evaluate_javascript")
    web_view_evaluate_javascript :: proc(web_view: ^WebView, script: cstring, length: glib.ssize, world_name: cstring, source_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_evaluate_javascript_finish")
    web_view_evaluate_javascript_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^jsc.Value ---

    @(link_name = "webkit_web_view_call_async_javascript_function")
    web_view_call_async_javascript_function :: proc(web_view: ^WebView, body: cstring, length: glib.ssize, arguments: ^glib.Variant, world_name: cstring, source_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_call_async_javascript_function_finish")
    web_view_call_async_javascript_function_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^jsc.Value ---

    @(link_name = "webkit_web_view_get_main_resource")
    web_view_get_main_resource :: proc(web_view: ^WebView) -> ^WebResource ---

    @(link_name = "webkit_web_view_get_inspector")
    web_view_get_inspector :: proc(web_view: ^WebView) -> ^WebInspector ---

    @(link_name = "webkit_web_view_can_show_mime_type")
    web_view_can_show_mime_type :: proc(web_view: ^WebView, mime_type: cstring) -> glib.boolean ---

    @(link_name = "webkit_web_view_save")
    web_view_save :: proc(web_view: ^WebView, save_mode: SaveMode, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_save_finish")
    web_view_save_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "webkit_web_view_save_to_file")
    web_view_save_to_file :: proc(web_view: ^WebView, file: ^gio.File, save_mode: SaveMode, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_save_to_file_finish")
    web_view_save_to_file_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_web_view_download_uri")
    web_view_download_uri :: proc(web_view: ^WebView, uri: cstring) -> ^Download ---

    @(link_name = "webkit_web_view_get_tls_info")
    web_view_get_tls_info :: proc(web_view: ^WebView, certificate: ^^gio.TlsCertificate, errors: ^gio.TlsCertificateFlags) -> glib.boolean ---

    @(link_name = "webkit_web_view_get_snapshot")
    web_view_get_snapshot :: proc(web_view: ^WebView, region: SnapshotRegion, options: SnapshotOptions, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_get_snapshot_finish")
    web_view_get_snapshot_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gtk.Texture ---

    @(link_name = "webkit_web_view_get_user_content_manager")
    web_view_get_user_content_manager :: proc(web_view: ^WebView) -> ^UserContentManager ---

    @(link_name = "webkit_web_view_set_background_color")
    web_view_set_background_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) ---

    @(link_name = "webkit_web_view_get_background_color")
    web_view_get_background_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) ---

    @(link_name = "webkit_web_view_is_editable")
    web_view_is_editable :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_set_editable")
    web_view_set_editable :: proc(web_view: ^WebView, editable: glib.boolean) ---

    @(link_name = "webkit_web_view_get_editor_state")
    web_view_get_editor_state :: proc(web_view: ^WebView) -> ^EditorState ---

    @(link_name = "webkit_web_view_get_session_state")
    web_view_get_session_state :: proc(web_view: ^WebView) -> ^WebViewSessionState ---

    @(link_name = "webkit_web_view_restore_session_state")
    web_view_restore_session_state :: proc(web_view: ^WebView, state: ^WebViewSessionState) ---

    @(link_name = "webkit_web_view_send_message_to_page")
    web_view_send_message_to_page :: proc(web_view: ^WebView, message: ^UserMessage, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_web_view_send_message_to_page_finish")
    web_view_send_message_to_page_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserMessage ---

    @(link_name = "webkit_web_view_set_input_method_context")
    web_view_set_input_method_context :: proc(web_view: ^WebView, context_p: ^InputMethodContext) ---

    @(link_name = "webkit_web_view_get_input_method_context")
    web_view_get_input_method_context :: proc(web_view: ^WebView) -> ^InputMethodContext ---

    @(link_name = "webkit_web_view_set_cors_allowlist")
    web_view_set_cors_allowlist :: proc(web_view: ^WebView, allowlist: ^cstring) ---

    @(link_name = "webkit_web_view_get_website_policies")
    web_view_get_website_policies :: proc(web_view: ^WebView) -> ^WebsitePolicies ---

    @(link_name = "webkit_web_view_get_is_web_process_responsive")
    web_view_get_is_web_process_responsive :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_terminate_web_process")
    web_view_terminate_web_process :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_web_view_get_camera_capture_state")
    web_view_get_camera_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---

    @(link_name = "webkit_web_view_set_camera_capture_state")
    web_view_set_camera_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---

    @(link_name = "webkit_web_view_get_microphone_capture_state")
    web_view_get_microphone_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---

    @(link_name = "webkit_web_view_set_microphone_capture_state")
    web_view_set_microphone_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---

    @(link_name = "webkit_web_view_get_display_capture_state")
    web_view_get_display_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---

    @(link_name = "webkit_web_view_set_display_capture_state")
    web_view_set_display_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---

    @(link_name = "webkit_web_view_get_web_extension_mode")
    web_view_get_web_extension_mode :: proc(web_view: ^WebView) -> WebExtensionMode ---

    @(link_name = "webkit_web_view_get_default_content_security_policy")
    web_view_get_default_content_security_policy :: proc(web_view: ^WebView) -> cstring ---

    @(link_name = "webkit_web_view_get_theme_color")
    web_view_get_theme_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) -> glib.boolean ---

    @(link_name = "webkit_web_view_is_immersive_mode_enabled")
    web_view_is_immersive_mode_enabled :: proc(web_view: ^WebView) -> glib.boolean ---

    @(link_name = "webkit_web_view_leave_immersive_mode")
    web_view_leave_immersive_mode :: proc(web_view: ^WebView) ---

    @(link_name = "webkit_print_operation_get_type")
    print_operation_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_print_operation_new")
    print_operation_new :: proc(web_view: ^WebView) -> ^PrintOperation ---

    @(link_name = "webkit_print_operation_get_print_settings")
    print_operation_get_print_settings :: proc(print_operation: ^PrintOperation) -> ^gtk.PrintSettings ---

    @(link_name = "webkit_print_operation_set_print_settings")
    print_operation_set_print_settings :: proc(print_operation: ^PrintOperation, print_settings: ^gtk.PrintSettings) ---

    @(link_name = "webkit_print_operation_get_page_setup")
    print_operation_get_page_setup :: proc(print_operation: ^PrintOperation) -> ^gtk.PageSetup ---

    @(link_name = "webkit_print_operation_set_page_setup")
    print_operation_set_page_setup :: proc(print_operation: ^PrintOperation, page_setup: ^gtk.PageSetup) ---

    @(link_name = "webkit_print_operation_run_dialog")
    print_operation_run_dialog :: proc(print_operation: ^PrintOperation, parent: ^gtk.Window) -> PrintOperationResponse ---

    @(link_name = "webkit_print_operation_print")
    print_operation_print :: proc(print_operation: ^PrintOperation) ---

    @(link_name = "webkit_response_policy_decision_get_type")
    response_policy_decision_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_response_policy_decision_get_request")
    response_policy_decision_get_request :: proc(decision: ^ResponsePolicyDecision) -> ^URIRequest ---

    @(link_name = "webkit_response_policy_decision_get_response")
    response_policy_decision_get_response :: proc(decision: ^ResponsePolicyDecision) -> ^URIResponse ---

    @(link_name = "webkit_response_policy_decision_is_mime_type_supported")
    response_policy_decision_is_mime_type_supported :: proc(decision: ^ResponsePolicyDecision) -> glib.boolean ---

    @(link_name = "webkit_response_policy_decision_is_main_frame_main_resource")
    response_policy_decision_is_main_frame_main_resource :: proc(decision: ^ResponsePolicyDecision) -> glib.boolean ---

    @(link_name = "webkit_uri_for_display")
    uri_for_display :: proc(uri: cstring) -> cstring ---

    @(link_name = "webkit_user_content_filter_store_get_type")
    user_content_filter_store_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_content_filter_store_new")
    user_content_filter_store_new :: proc(storage_path: cstring) -> ^UserContentFilterStore ---

    @(link_name = "webkit_user_content_filter_store_get_path")
    user_content_filter_store_get_path :: proc(store: ^UserContentFilterStore) -> cstring ---

    @(link_name = "webkit_user_content_filter_store_save")
    user_content_filter_store_save :: proc(store: ^UserContentFilterStore, identifier: cstring, source: ^glib.Bytes, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_user_content_filter_store_save_finish")
    user_content_filter_store_save_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---

    @(link_name = "webkit_user_content_filter_store_save_from_file")
    user_content_filter_store_save_from_file :: proc(store: ^UserContentFilterStore, identifier: cstring, file: ^gio.File, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_user_content_filter_store_save_from_file_finish")
    user_content_filter_store_save_from_file_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---

    @(link_name = "webkit_user_content_filter_store_remove")
    user_content_filter_store_remove :: proc(store: ^UserContentFilterStore, identifier: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_user_content_filter_store_remove_finish")
    user_content_filter_store_remove_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "webkit_user_content_filter_store_load")
    user_content_filter_store_load :: proc(store: ^UserContentFilterStore, identifier: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_user_content_filter_store_load_finish")
    user_content_filter_store_load_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---

    @(link_name = "webkit_user_content_filter_store_fetch_identifiers")
    user_content_filter_store_fetch_identifiers :: proc(store: ^UserContentFilterStore, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "webkit_user_content_filter_store_fetch_identifiers_finish")
    user_content_filter_store_fetch_identifiers_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult) -> ^cstring ---

    @(link_name = "webkit_user_media_permission_request_get_type")
    user_media_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_user_media_permission_is_for_audio_device")
    user_media_permission_is_for_audio_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---

    @(link_name = "webkit_user_media_permission_is_for_video_device")
    user_media_permission_is_for_video_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---

    @(link_name = "webkit_user_media_permission_is_for_display_device")
    user_media_permission_is_for_display_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---

    @(link_name = "webkit_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "webkit_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "webkit_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "webkit_web_extension_match_pattern_get_type")
    web_extension_match_pattern_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_match_pattern_ref")
    web_extension_match_pattern_ref :: proc(matchPattern: ^WebExtensionMatchPattern) -> ^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_match_pattern_unref")
    web_extension_match_pattern_unref :: proc(matchPattern: ^WebExtensionMatchPattern) ---

    @(link_name = "webkit_web_extension_match_pattern_new_all_urls")
    web_extension_match_pattern_new_all_urls :: proc() -> ^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_match_pattern_new_all_hosts_and_schemes")
    web_extension_match_pattern_new_all_hosts_and_schemes :: proc() -> ^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_match_pattern_new_with_string")
    web_extension_match_pattern_new_with_string :: proc(string_p: cstring, error: ^^glib.Error) -> ^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_match_pattern_new_with_scheme")
    web_extension_match_pattern_new_with_scheme :: proc(scheme: cstring, host: cstring, path: cstring, error: ^^glib.Error) -> ^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_match_pattern_register_custom_url_scheme")
    web_extension_match_pattern_register_custom_url_scheme :: proc(urlScheme: cstring) ---

    @(link_name = "webkit_web_extension_match_pattern_register_custom_URL_scheme")
    web_extension_match_pattern_register_custom_URL_scheme :: proc(urlScheme: cstring) ---

    @(link_name = "webkit_web_extension_match_pattern_get_string")
    web_extension_match_pattern_get_string :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---

    @(link_name = "webkit_web_extension_match_pattern_get_scheme")
    web_extension_match_pattern_get_scheme :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---

    @(link_name = "webkit_web_extension_match_pattern_get_host")
    web_extension_match_pattern_get_host :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---

    @(link_name = "webkit_web_extension_match_pattern_get_path")
    web_extension_match_pattern_get_path :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---

    @(link_name = "webkit_web_extension_match_pattern_get_matches_all_urls")
    web_extension_match_pattern_get_matches_all_urls :: proc(matchPattern: ^WebExtensionMatchPattern) -> glib.boolean ---

    @(link_name = "webkit_web_extension_match_pattern_get_matches_all_hosts")
    web_extension_match_pattern_get_matches_all_hosts :: proc(matchPattern: ^WebExtensionMatchPattern) -> glib.boolean ---

    @(link_name = "webkit_web_extension_match_pattern_matches_url")
    web_extension_match_pattern_matches_url :: proc(matchPattern: ^WebExtensionMatchPattern, url: cstring, options: WebExtensionMatchPatternOptions) -> glib.boolean ---

    @(link_name = "webkit_web_extension_match_pattern_matches_pattern")
    web_extension_match_pattern_matches_pattern :: proc(matchPattern: ^WebExtensionMatchPattern, pattern: ^WebExtensionMatchPattern, options: WebExtensionMatchPatternOptions) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_type")
    web_extension_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_web_extension_new")
    web_extension_new :: proc(extension_path: cstring, error: ^^glib.Error) -> ^WebExtension ---

    @(link_name = "webkit_web_extension_get_path")
    web_extension_get_path :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_manifest_version")
    web_extension_get_manifest_version :: proc(extension: ^WebExtension) -> glib.double ---

    @(link_name = "webkit_web_extension_supports_manifest_version")
    web_extension_supports_manifest_version :: proc(extension: ^WebExtension, manifest_version: glib.double) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_default_locale")
    web_extension_get_default_locale :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_display_name")
    web_extension_get_display_name :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_display_short_name")
    web_extension_get_display_short_name :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_display_version")
    web_extension_get_display_version :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_display_description")
    web_extension_get_display_description :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_display_action_label")
    web_extension_get_display_action_label :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_icon")
    web_extension_get_icon :: proc(extension: ^WebExtension, width: glib.double, height: glib.double) -> ^gio.Icon ---

    @(link_name = "webkit_web_extension_get_action_icon")
    web_extension_get_action_icon :: proc(extension: ^WebExtension, width: glib.double, height: glib.double) -> ^gio.Icon ---

    @(link_name = "webkit_web_extension_get_version")
    web_extension_get_version :: proc(extension: ^WebExtension) -> cstring ---

    @(link_name = "webkit_web_extension_get_requested_permissions")
    web_extension_get_requested_permissions :: proc(extension: ^WebExtension) -> ^cstring ---

    @(link_name = "webkit_web_extension_get_optional_permissions")
    web_extension_get_optional_permissions :: proc(extension: ^WebExtension) -> ^cstring ---

    @(link_name = "webkit_web_extension_get_requested_permission_match_patterns")
    web_extension_get_requested_permission_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_get_optional_permission_match_patterns")
    web_extension_get_optional_permission_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_get_all_requested_match_patterns")
    web_extension_get_all_requested_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---

    @(link_name = "webkit_web_extension_get_has_background_content")
    web_extension_get_has_background_content :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_persistent_background_content")
    web_extension_get_has_persistent_background_content :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_injected_content")
    web_extension_get_has_injected_content :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_options_page")
    web_extension_get_has_options_page :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_override_new_tab_page")
    web_extension_get_has_override_new_tab_page :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_commands")
    web_extension_get_has_commands :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_web_extension_get_has_content_modification_rules")
    web_extension_get_has_content_modification_rules :: proc(extension: ^WebExtension) -> glib.boolean ---

    @(link_name = "webkit_website_data_access_permission_request_get_type")
    website_data_access_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_website_data_access_permission_request_get_requesting_domain")
    website_data_access_permission_request_get_requesting_domain :: proc(request: ^WebsiteDataAccessPermissionRequest) -> cstring ---

    @(link_name = "webkit_website_data_access_permission_request_get_current_domain")
    website_data_access_permission_request_get_current_domain :: proc(request: ^WebsiteDataAccessPermissionRequest) -> cstring ---

    @(link_name = "webkit_xr_permission_request_get_type")
    xr_permission_request_get_type :: proc() -> gobj.Type ---

    @(link_name = "webkit_xr_permission_request_get_security_origin")
    xr_permission_request_get_security_origin :: proc(request: ^XRPermissionRequest) -> ^SecurityOrigin ---

    @(link_name = "webkit_xr_permission_request_get_session_mode")
    xr_permission_request_get_session_mode :: proc(request: ^XRPermissionRequest) -> XRSessionMode ---

    @(link_name = "webkit_xr_permission_request_get_granted_features")
    xr_permission_request_get_granted_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---

    @(link_name = "webkit_xr_permission_request_get_consent_required_features")
    xr_permission_request_get_consent_required_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---

    @(link_name = "webkit_xr_permission_request_get_consent_optional_features")
    xr_permission_request_get_consent_optional_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---

    @(link_name = "webkit_xr_permission_request_get_required_features_requested")
    xr_permission_request_get_required_features_requested :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---

    @(link_name = "webkit_xr_permission_request_get_optional_features_requested")
    xr_permission_request_get_optional_features_requested :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---

    @(link_name = "webkit_xr_permission_request_set_granted_optional_features")
    xr_permission_request_set_granted_optional_features :: proc(request: ^XRPermissionRequest, granted: XRSessionFeatures) ---

}

foreign import webkit_runic "system:webkitgtk-6.0"

