# odin-webkit API

Every public declaration of every package, generated from the source by `make api`; do not
edit. The short form is the [cheat sheet](CHEATSHEET.md); the rules of the bindings are in the
[README](../README.md) and [PATCHED.md](PATCHED.md).

## webkit:webkit

```text
package webkit
	constants
		EDITING_COMMAND_COPY :: "Copy"
		EDITING_COMMAND_CREATE_LINK :: "CreateLink"
		EDITING_COMMAND_CUT :: "Cut"
		EDITING_COMMAND_INSERT_IMAGE :: "InsertImage"
		EDITING_COMMAND_PASTE :: "Paste"
		EDITING_COMMAND_PASTE_AS_PLAIN_TEXT :: "PasteAsPlainText"
		EDITING_COMMAND_REDO :: "Redo"
		EDITING_COMMAND_SELECT_ALL :: "SelectAll"
		EDITING_COMMAND_UNDO :: "Undo"
		FIND_OPTIONS_NONE :: FindOptions{}
		INPUT_HINT_NONE :: InputHints{}
		MAJOR_VERSION :: 2
		MICRO_VERSION :: 6
		MINOR_VERSION :: 52
		SNAPSHOT_OPTIONS_NONE :: SnapshotOptions{}
		WEBSITE_DATA_ALL :: WebsiteDataTypes{.WEBSITE_DATA_MEMORY_CACHE, .WEBSITE_DATA_DISK_CACHE, .WEBSITE_DATA_OFFLINE_APPLICATION_CACHE, .WEBSITE_DATA_SESSION_STORAGE, .WEBSITE_DATA_LOCAL_STORAGE, .WEBSITE_DATA_INDEXEDDB_DATABASES, .WEBSITE_DATA_COOKIES, .WEBSITE_DATA_DEVICE_ID_HASH_SALT, .WEBSITE_DATA_HSTS_CACHE, .WEBSITE_DATA_ITP, .WEBSITE_DATA_SERVICE_WORKER_REGISTRATIONS, .WEBSITE_DATA_DOM_CACHE}

	procedures
		application_info_get_name :: proc(info: ^ApplicationInfo) -> cstring ---
		application_info_get_type :: proc() -> gobj.Type ---
		application_info_get_version :: proc(info: ^ApplicationInfo, major: ^glib.uint64, minor: ^glib.uint64, micro: ^glib.uint64) ---
		application_info_new :: proc() -> ^ApplicationInfo ---
		application_info_ref :: proc(info: ^ApplicationInfo) -> ^ApplicationInfo ---
		application_info_set_name :: proc(info: ^ApplicationInfo, name: cstring) ---
		application_info_set_version :: proc(info: ^ApplicationInfo, major: glib.uint64, minor: glib.uint64, micro: glib.uint64) ---
		application_info_unref :: proc(info: ^ApplicationInfo) ---
		authentication_request_authenticate :: proc(request: ^AuthenticationRequest, credential: ^Credential) ---
		authentication_request_can_save_credentials :: proc(request: ^AuthenticationRequest) -> glib.boolean ---
		authentication_request_cancel :: proc(request: ^AuthenticationRequest) ---
		authentication_request_get_certificate_pin_flags :: proc(request: ^AuthenticationRequest) -> gio.TlsPasswordFlags ---
		authentication_request_get_host :: proc(request: ^AuthenticationRequest) -> cstring ---
		authentication_request_get_port :: proc(request: ^AuthenticationRequest) -> glib.uint_ ---
		authentication_request_get_proposed_credential :: proc(request: ^AuthenticationRequest) -> ^Credential ---
		authentication_request_get_realm :: proc(request: ^AuthenticationRequest) -> cstring ---
		authentication_request_get_scheme :: proc(request: ^AuthenticationRequest) -> AuthenticationScheme ---
		authentication_request_get_security_origin :: proc(request: ^AuthenticationRequest) -> ^SecurityOrigin ---
		authentication_request_get_type :: proc() -> gobj.Type ---
		authentication_request_is_for_proxy :: proc(request: ^AuthenticationRequest) -> glib.boolean ---
		authentication_request_is_retry :: proc(request: ^AuthenticationRequest) -> glib.boolean ---
		authentication_request_set_can_save_credentials :: proc(request: ^AuthenticationRequest, enabled: glib.boolean) ---
		authentication_request_set_proposed_credential :: proc(request: ^AuthenticationRequest, credential: ^Credential) ---
		authentication_scheme_get_type :: proc() -> gobj.Type ---
		automation_browsing_context_presentation_get_type :: proc() -> gobj.Type ---
		automation_session_get_application_info :: proc(session: ^AutomationSession) -> ^ApplicationInfo ---
		automation_session_get_id :: proc(session: ^AutomationSession) -> cstring ---
		automation_session_get_type :: proc() -> gobj.Type ---
		automation_session_set_application_info :: proc(session: ^AutomationSession, info: ^ApplicationInfo) ---
		autoplay_policy_get_type :: proc() -> gobj.Type ---
		back_forward_list_get_back_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---
		back_forward_list_get_back_list :: proc(back_forward_list: ^BackForwardList) -> ^glib.List ---
		back_forward_list_get_back_list_with_limit :: proc(back_forward_list: ^BackForwardList, limit: glib.uint_) -> ^glib.List ---
		back_forward_list_get_current_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---
		back_forward_list_get_forward_item :: proc(back_forward_list: ^BackForwardList) -> ^BackForwardListItem ---
		back_forward_list_get_forward_list :: proc(back_forward_list: ^BackForwardList) -> ^glib.List ---
		back_forward_list_get_forward_list_with_limit :: proc(back_forward_list: ^BackForwardList, limit: glib.uint_) -> ^glib.List ---
		back_forward_list_get_length :: proc(back_forward_list: ^BackForwardList) -> glib.uint_ ---
		back_forward_list_get_nth_item :: proc(back_forward_list: ^BackForwardList, index: glib.int_) -> ^BackForwardListItem ---
		back_forward_list_get_type :: proc() -> gobj.Type ---
		back_forward_list_item_get_original_uri :: proc(list_item: ^BackForwardListItem) -> cstring ---
		back_forward_list_item_get_title :: proc(list_item: ^BackForwardListItem) -> cstring ---
		back_forward_list_item_get_type :: proc() -> gobj.Type ---
		back_forward_list_item_get_uri :: proc(list_item: ^BackForwardListItem) -> cstring ---
		cache_model_get_type :: proc() -> gobj.Type ---
		clipboard_permission_request_get_type :: proc() -> gobj.Type ---
		color_chooser_request_cancel :: proc(request: ^ColorChooserRequest) ---
		color_chooser_request_finish :: proc(request: ^ColorChooserRequest) ---
		color_chooser_request_get_element_rectangle :: proc(request: ^ColorChooserRequest, rect: ^gtk.Rectangle) ---
		color_chooser_request_get_rgba :: proc(request: ^ColorChooserRequest, rgba: ^gtk.RGBA) ---
		color_chooser_request_get_type :: proc() -> gobj.Type ---
		color_chooser_request_set_rgba :: proc(request: ^ColorChooserRequest, rgba: ^gtk.RGBA) ---
		context_menu_action_get_type :: proc() -> gobj.Type ---
		context_menu_append :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---
		context_menu_first :: proc(menu: ^ContextMenu) -> ^ContextMenuItem ---
		context_menu_get_event :: proc(menu: ^ContextMenu) -> ^gtk.Event ---
		context_menu_get_item_at_position :: proc(menu: ^ContextMenu, position: glib.uint_) -> ^ContextMenuItem ---
		context_menu_get_items :: proc(menu: ^ContextMenu) -> ^glib.List ---
		context_menu_get_n_items :: proc(menu: ^ContextMenu) -> glib.uint_ ---
		context_menu_get_position :: proc(menu: ^ContextMenu, x: ^glib.int_, y: ^glib.int_) -> glib.boolean ---
		context_menu_get_type :: proc() -> gobj.Type ---
		context_menu_get_user_data :: proc(menu: ^ContextMenu) -> ^glib.Variant ---
		context_menu_insert :: proc(menu: ^ContextMenu, item: ^ContextMenuItem, position: glib.int_) ---
		context_menu_item_get_gaction :: proc(item: ^ContextMenuItem) -> ^gio.Action ---
		context_menu_item_get_gaction_target :: proc(item: ^ContextMenuItem) -> ^glib.Variant ---
		context_menu_item_get_stock_action :: proc(item: ^ContextMenuItem) -> ContextMenuAction ---
		context_menu_item_get_submenu :: proc(item: ^ContextMenuItem) -> ^ContextMenu ---
		context_menu_item_get_title :: proc(item: ^ContextMenuItem) -> cstring ---
		context_menu_item_get_type :: proc() -> gobj.Type ---
		context_menu_item_is_separator :: proc(item: ^ContextMenuItem) -> glib.boolean ---
		context_menu_item_new_from_gaction :: proc(action: ^gio.Action, label: cstring, target: ^glib.Variant) -> ^ContextMenuItem ---
		context_menu_item_new_from_stock_action :: proc(action: ContextMenuAction) -> ^ContextMenuItem ---
		context_menu_item_new_from_stock_action_with_label :: proc(action: ContextMenuAction, label: cstring) -> ^ContextMenuItem ---
		context_menu_item_new_separator :: proc() -> ^ContextMenuItem ---
		context_menu_item_new_with_submenu :: proc(label: cstring, submenu: ^ContextMenu) -> ^ContextMenuItem ---
		context_menu_item_set_submenu :: proc(item: ^ContextMenuItem, submenu: ^ContextMenu) ---
		context_menu_last :: proc(menu: ^ContextMenu) -> ^ContextMenuItem ---
		context_menu_move_item :: proc(menu: ^ContextMenu, item: ^ContextMenuItem, position: glib.int_) ---
		context_menu_new :: proc() -> ^ContextMenu ---
		context_menu_new_with_items :: proc(items: ^glib.List) -> ^ContextMenu ---
		context_menu_prepend :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---
		context_menu_remove :: proc(menu: ^ContextMenu, item: ^ContextMenuItem) ---
		context_menu_remove_all :: proc(menu: ^ContextMenu) ---
		context_menu_set_user_data :: proc(menu: ^ContextMenu, user_data: ^glib.Variant) ---
		cookie_accept_policy_get_type :: proc() -> gobj.Type ---
		cookie_manager_add_cookie :: proc(cookie_manager: ^CookieManager, cookie: ^soup.Cookie, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_add_cookie_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		cookie_manager_delete_cookie :: proc(cookie_manager: ^CookieManager, cookie: ^soup.Cookie, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_delete_cookie_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		cookie_manager_get_accept_policy :: proc(cookie_manager: ^CookieManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_get_accept_policy_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> CookieAcceptPolicy ---
		cookie_manager_get_all_cookies :: proc(cookie_manager: ^CookieManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_get_all_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		cookie_manager_get_cookies :: proc(cookie_manager: ^CookieManager, uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_get_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		cookie_manager_get_type :: proc() -> gobj.Type ---
		cookie_manager_replace_cookies :: proc(cookie_manager: ^CookieManager, cookies: ^glib.List, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		cookie_manager_replace_cookies_finish :: proc(cookie_manager: ^CookieManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		cookie_manager_set_accept_policy :: proc(cookie_manager: ^CookieManager, policy: CookieAcceptPolicy) ---
		cookie_manager_set_persistent_storage :: proc(cookie_manager: ^CookieManager, filename: cstring, storage: CookiePersistentStorage) ---
		cookie_persistent_storage_get_type :: proc() -> gobj.Type ---
		credential_copy :: proc(credential: ^Credential) -> ^Credential ---
		credential_free :: proc(credential: ^Credential) ---
		credential_get_certificate :: proc(credential: ^Credential) -> ^gio.TlsCertificate ---
		credential_get_password :: proc(credential: ^Credential) -> cstring ---
		credential_get_persistence :: proc(credential: ^Credential) -> CredentialPersistence ---
		credential_get_type :: proc() -> gobj.Type ---
		credential_get_username :: proc(credential: ^Credential) -> cstring ---
		credential_has_password :: proc(credential: ^Credential) -> glib.boolean ---
		credential_new :: proc(username: cstring, password: cstring, persistence: CredentialPersistence) -> ^Credential ---
		credential_new_for_certificate :: proc(certificate: ^gio.TlsCertificate, persistence: CredentialPersistence) -> ^Credential ---
		credential_new_for_certificate_pin :: proc(pin: cstring, persistence: CredentialPersistence) -> ^Credential ---
		credential_persistence_get_type :: proc() -> gobj.Type ---
		device_info_permission_request_get_type :: proc() -> gobj.Type ---
		download_cancel :: proc(download: ^Download) ---
		download_error_get_type :: proc() -> gobj.Type ---
		download_error_quark :: proc() -> glib.Quark ---
		download_get_allow_overwrite :: proc(download: ^Download) -> glib.boolean ---
		download_get_destination :: proc(download: ^Download) -> cstring ---
		download_get_elapsed_time :: proc(download: ^Download) -> glib.double ---
		download_get_estimated_progress :: proc(download: ^Download) -> glib.double ---
		download_get_received_data_length :: proc(download: ^Download) -> glib.uint64 ---
		download_get_request :: proc(download: ^Download) -> ^URIRequest ---
		download_get_response :: proc(download: ^Download) -> ^URIResponse ---
		download_get_type :: proc() -> gobj.Type ---
		download_get_web_view :: proc(download: ^Download) -> ^WebView ---
		download_set_allow_overwrite :: proc(download: ^Download, allowed: glib.boolean) ---
		download_set_destination :: proc(download: ^Download, destination: cstring) ---
		editor_state_get_type :: proc() -> gobj.Type ---
		editor_state_get_typing_attributes :: proc(editor_state: ^EditorState) -> glib.uint_ ---
		editor_state_is_copy_available :: proc(editor_state: ^EditorState) -> glib.boolean ---
		editor_state_is_cut_available :: proc(editor_state: ^EditorState) -> glib.boolean ---
		editor_state_is_paste_available :: proc(editor_state: ^EditorState) -> glib.boolean ---
		editor_state_is_redo_available :: proc(editor_state: ^EditorState) -> glib.boolean ---
		editor_state_is_undo_available :: proc(editor_state: ^EditorState) -> glib.boolean ---
		editor_typing_attributes_get_type :: proc() -> gobj.Type ---
		favicon_database_clear :: proc(database: ^FaviconDatabase) ---
		favicon_database_error_get_type :: proc() -> gobj.Type ---
		favicon_database_error_quark :: proc() -> glib.Quark ---
		favicon_database_get_favicon :: proc(database: ^FaviconDatabase, page_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		favicon_database_get_favicon_finish :: proc(database: ^FaviconDatabase, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gtk.Texture ---
		favicon_database_get_favicon_uri :: proc(database: ^FaviconDatabase, page_uri: cstring) -> cstring ---
		favicon_database_get_type :: proc() -> gobj.Type ---
		feature_get_category :: proc(feature: ^Feature) -> cstring ---
		feature_get_default_value :: proc(feature: ^Feature) -> glib.boolean ---
		feature_get_details :: proc(feature: ^Feature) -> cstring ---
		feature_get_identifier :: proc(feature: ^Feature) -> cstring ---
		feature_get_name :: proc(feature: ^Feature) -> cstring ---
		feature_get_status :: proc(feature: ^Feature) -> FeatureStatus ---
		feature_get_type :: proc() -> gobj.Type ---
		feature_list_get :: proc(feature_list: ^FeatureList, index: glib.size) -> ^Feature ---
		feature_list_get_length :: proc(feature_list: ^FeatureList) -> glib.size ---
		feature_list_get_type :: proc() -> gobj.Type ---
		feature_list_ref :: proc(feature_list: ^FeatureList) -> ^FeatureList ---
		feature_list_unref :: proc(feature_list: ^FeatureList) ---
		feature_ref :: proc(feature: ^Feature) -> ^Feature ---
		feature_status_get_type :: proc() -> gobj.Type ---
		feature_unref :: proc(feature: ^Feature) ---
		file_chooser_request_cancel :: proc(request: ^FileChooserRequest) ---
		file_chooser_request_get_mime_types :: proc(request: ^FileChooserRequest) -> ^cstring ---
		file_chooser_request_get_mime_types_filter :: proc(request: ^FileChooserRequest) -> ^gtk.FileFilter ---
		file_chooser_request_get_select_multiple :: proc(request: ^FileChooserRequest) -> glib.boolean ---
		file_chooser_request_get_selected_files :: proc(request: ^FileChooserRequest) -> ^cstring ---
		file_chooser_request_get_type :: proc() -> gobj.Type ---
		file_chooser_request_select_files :: proc(request: ^FileChooserRequest, files: [^]cstring) ---
		find_controller_count_matches :: proc(find_controller: ^FindController, search_text: cstring, find_options: glib.uint32, max_match_count: glib.uint_) ---
		find_controller_get_max_match_count :: proc(find_controller: ^FindController) -> glib.uint_ ---
		find_controller_get_options :: proc(find_controller: ^FindController) -> glib.uint32 ---
		find_controller_get_search_text :: proc(find_controller: ^FindController) -> cstring ---
		find_controller_get_type :: proc() -> gobj.Type ---
		find_controller_get_web_view :: proc(find_controller: ^FindController) -> ^WebView ---
		find_controller_search :: proc(find_controller: ^FindController, search_text: cstring, find_options: glib.uint32, max_match_count: glib.uint_) ---
		find_controller_search_finish :: proc(find_controller: ^FindController) ---
		find_controller_search_next :: proc(find_controller: ^FindController) ---
		find_controller_search_previous :: proc(find_controller: ^FindController) ---
		find_options_get_type :: proc() -> gobj.Type ---
		form_submission_request_get_type :: proc() -> gobj.Type ---
		form_submission_request_list_text_fields :: proc(request: ^FormSubmissionRequest, field_names: ^^glib.PtrArray, field_values: ^^glib.PtrArray) -> glib.boolean ---
		form_submission_request_submit :: proc(request: ^FormSubmissionRequest) ---
		geolocation_manager_failed :: proc(manager: ^eolocationManager, error_message: cstring) ---
		geolocation_manager_get_enable_high_accuracy :: proc(manager: ^eolocationManager) -> glib.boolean ---
		geolocation_manager_get_type :: proc() -> gobj.Type ---
		geolocation_manager_update_position :: proc(manager: ^eolocationManager, position: ^eolocationPosition) ---
		geolocation_permission_request_get_type :: proc() -> gobj.Type ---
		geolocation_position_copy :: proc(position: ^eolocationPosition) -> ^eolocationPosition ---
		geolocation_position_free :: proc(position: ^eolocationPosition) ---
		geolocation_position_get_type :: proc() -> gobj.Type ---
		geolocation_position_new :: proc(latitude: f64, longitude: f64, accuracy: f64) -> ^eolocationPosition ---
		geolocation_position_set_altitude :: proc(position: ^eolocationPosition, altitude: f64) ---
		geolocation_position_set_altitude_accuracy :: proc(position: ^eolocationPosition, altitude_accuracy: f64) ---
		geolocation_position_set_heading :: proc(position: ^eolocationPosition, heading: f64) ---
		geolocation_position_set_speed :: proc(position: ^eolocationPosition, speed: f64) ---
		geolocation_position_set_timestamp :: proc(position: ^eolocationPosition, timestamp: glib.uint64) ---
		get_major_version :: proc() -> glib.uint_ ---
		get_micro_version :: proc() -> glib.uint_ ---
		get_minor_version :: proc() -> glib.uint_ ---
		hardware_acceleration_policy_get_type :: proc() -> gobj.Type ---
		hit_test_result_context_get_type :: proc() -> gobj.Type ---
		hit_test_result_context_is_editable :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_context_is_image :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_context_is_link :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_context_is_media :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_context_is_scrollbar :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_context_is_selection :: proc(hit_test_result: ^HitTestResult) -> glib.boolean ---
		hit_test_result_get_context :: proc(hit_test_result: ^HitTestResult) -> glib.uint_ ---
		hit_test_result_get_image_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---
		hit_test_result_get_link_label :: proc(hit_test_result: ^HitTestResult) -> cstring ---
		hit_test_result_get_link_title :: proc(hit_test_result: ^HitTestResult) -> cstring ---
		hit_test_result_get_link_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---
		hit_test_result_get_media_uri :: proc(hit_test_result: ^HitTestResult) -> cstring ---
		hit_test_result_get_type :: proc() -> gobj.Type ---
		input_hints_get_type :: proc() -> gobj.Type ---
		input_method_context_filter_key_event :: proc(context_p: ^InputMethodContext, key_event: ^gtk.Event) -> glib.boolean ---
		input_method_context_get_input_hints :: proc(context_p: ^InputMethodContext) -> InputHints ---
		input_method_context_get_input_purpose :: proc(context_p: ^InputMethodContext) -> InputPurpose ---
		input_method_context_get_preedit :: proc(context_p: ^InputMethodContext, text: ^cstring, underlines: ^^glib.List, cursor_offset: ^glib.uint_) ---
		input_method_context_get_type :: proc() -> gobj.Type ---
		input_method_context_notify_cursor_area :: proc(context_p: ^InputMethodContext, x: i32, y: i32, width: i32, height: i32) ---
		input_method_context_notify_focus_in :: proc(context_p: ^InputMethodContext) ---
		input_method_context_notify_focus_out :: proc(context_p: ^InputMethodContext) ---
		input_method_context_notify_surrounding :: proc(context_p: ^InputMethodContext, text: cstring, length: i32, cursor_index: glib.uint_, selection_index: glib.uint_) ---
		input_method_context_reset :: proc(context_p: ^InputMethodContext) ---
		input_method_context_set_enable_preedit :: proc(context_p: ^InputMethodContext, enabled: glib.boolean) ---
		input_method_context_set_input_hints :: proc(context_p: ^InputMethodContext, hints: InputHints) ---
		input_method_context_set_input_purpose :: proc(context_p: ^InputMethodContext, purpose: InputPurpose) ---
		input_method_underline_copy :: proc(underline: ^InputMethodUnderline) -> ^InputMethodUnderline ---
		input_method_underline_free :: proc(underline: ^InputMethodUnderline) ---
		input_method_underline_get_type :: proc() -> gobj.Type ---
		input_method_underline_new :: proc(start_offset: glib.uint_, end_offset: glib.uint_) -> ^InputMethodUnderline ---
		input_method_underline_set_color :: proc(underline: ^InputMethodUnderline, rgba: ^gtk.RGBA) ---
		input_purpose_get_type :: proc() -> gobj.Type ---
		insecure_content_event_get_type :: proc() -> gobj.Type ---
		itp_first_party_get_domain :: proc(itp_first_party: ^ITPFirstParty) -> cstring ---
		itp_first_party_get_last_update_time :: proc(itp_first_party: ^ITPFirstParty) -> ^glib.DateTime ---
		itp_first_party_get_type :: proc() -> gobj.Type ---
		itp_first_party_get_website_data_access_allowed :: proc(itp_first_party: ^ITPFirstParty) -> glib.boolean ---
		itp_first_party_ref :: proc(itp_first_party: ^ITPFirstParty) -> ^ITPFirstParty ---
		itp_first_party_unref :: proc(itp_first_party: ^ITPFirstParty) ---
		itp_third_party_get_domain :: proc(itp_third_party: ^ITPThirdParty) -> cstring ---
		itp_third_party_get_first_parties :: proc(itp_third_party: ^ITPThirdParty) -> ^glib.List ---
		itp_third_party_get_type :: proc() -> gobj.Type ---
		itp_third_party_ref :: proc(itp_third_party: ^ITPThirdParty) -> ^ITPThirdParty ---
		itp_third_party_unref :: proc(itp_third_party: ^ITPThirdParty) ---
		javascript_error_get_type :: proc() -> gobj.Type ---
		javascript_error_quark :: proc() -> glib.Quark ---
		load_event_get_type :: proc() -> gobj.Type ---
		media_capture_state_get_type :: proc() -> gobj.Type ---
		media_error_get_type :: proc() -> gobj.Type ---
		media_error_quark :: proc() -> glib.Quark ---
		media_key_system_permission_get_name :: proc(request: ^MediaKeySystemPermissionRequest) -> cstring ---
		media_key_system_permission_request_get_type :: proc() -> gobj.Type ---
		memory_pressure_settings_copy :: proc(settings: ^MemoryPressureSettings) -> ^MemoryPressureSettings ---
		memory_pressure_settings_free :: proc(settings: ^MemoryPressureSettings) ---
		memory_pressure_settings_get_conservative_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---
		memory_pressure_settings_get_kill_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---
		memory_pressure_settings_get_memory_limit :: proc(settings: ^MemoryPressureSettings) -> glib.uint_ ---
		memory_pressure_settings_get_poll_interval :: proc(settings: ^MemoryPressureSettings) -> glib.double ---
		memory_pressure_settings_get_strict_threshold :: proc(settings: ^MemoryPressureSettings) -> glib.double ---
		memory_pressure_settings_get_type :: proc() -> gobj.Type ---
		memory_pressure_settings_new :: proc() -> ^MemoryPressureSettings ---
		memory_pressure_settings_set_conservative_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---
		memory_pressure_settings_set_kill_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---
		memory_pressure_settings_set_memory_limit :: proc(settings: ^MemoryPressureSettings, memory_limit: glib.uint_) ---
		memory_pressure_settings_set_poll_interval :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---
		memory_pressure_settings_set_strict_threshold :: proc(settings: ^MemoryPressureSettings, value: glib.double) ---
		navigation_action_copy :: proc(navigation: ^NavigationAction) -> ^NavigationAction ---
		navigation_action_free :: proc(navigation: ^NavigationAction) ---
		navigation_action_get_frame_name :: proc(navigation: ^NavigationAction) -> cstring ---
		navigation_action_get_modifiers :: proc(navigation: ^NavigationAction) -> glib.uint_ ---
		navigation_action_get_mouse_button :: proc(navigation: ^NavigationAction) -> glib.uint_ ---
		navigation_action_get_navigation_type :: proc(navigation: ^NavigationAction) -> NavigationType ---
		navigation_action_get_request :: proc(navigation: ^NavigationAction) -> ^URIRequest ---
		navigation_action_get_type :: proc() -> gobj.Type ---
		navigation_action_is_redirect :: proc(navigation: ^NavigationAction) -> glib.boolean ---
		navigation_action_is_user_gesture :: proc(navigation: ^NavigationAction) -> glib.boolean ---
		navigation_policy_decision_get_navigation_action :: proc(decision: ^NavigationPolicyDecision) -> ^NavigationAction ---
		navigation_policy_decision_get_type :: proc() -> gobj.Type ---
		navigation_type_get_type :: proc() -> gobj.Type ---
		network_error_get_type :: proc() -> gobj.Type ---
		network_error_quark :: proc() -> glib.Quark ---
		network_proxy_mode_get_type :: proc() -> gobj.Type ---
		network_proxy_settings_add_proxy_for_scheme :: proc(proxy_settings: ^NetworkProxySettings, scheme: cstring, proxy_uri: cstring) ---
		network_proxy_settings_copy :: proc(proxy_settings: ^NetworkProxySettings) -> ^NetworkProxySettings ---
		network_proxy_settings_free :: proc(proxy_settings: ^NetworkProxySettings) ---
		network_proxy_settings_get_type :: proc() -> gobj.Type ---
		network_proxy_settings_new :: proc(default_proxy_uri: cstring, ignore_hosts: [^]cstring) -> ^NetworkProxySettings ---
		network_session_allow_tls_certificate_for_host :: proc(session: ^NetworkSession, certificate: ^gio.TlsCertificate, host: cstring) ---
		network_session_download_uri :: proc(session: ^NetworkSession, uri: cstring) -> ^Download ---
		network_session_get_cookie_manager :: proc(session: ^NetworkSession) -> ^CookieManager ---
		network_session_get_default :: proc() -> ^NetworkSession ---
		network_session_get_itp_enabled :: proc(session: ^NetworkSession) -> glib.boolean ---
		network_session_get_itp_summary :: proc(session: ^NetworkSession, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		network_session_get_itp_summary_finish :: proc(session: ^NetworkSession, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		network_session_get_persistent_credential_storage_enabled :: proc(session: ^NetworkSession) -> glib.boolean ---
		network_session_get_tls_errors_policy :: proc(session: ^NetworkSession) -> TLSErrorsPolicy ---
		network_session_get_type :: proc() -> gobj.Type ---
		network_session_get_website_data_manager :: proc(session: ^NetworkSession) -> ^WebsiteDataManager ---
		network_session_is_ephemeral :: proc(session: ^NetworkSession) -> glib.boolean ---
		network_session_new :: proc(data_directory: cstring, cache_directory: cstring) -> ^NetworkSession ---
		network_session_new_ephemeral :: proc() -> ^NetworkSession ---
		network_session_prefetch_dns :: proc(session: ^NetworkSession, hostname: cstring) ---
		network_session_set_itp_enabled :: proc(session: ^NetworkSession, enabled: glib.boolean) ---
		network_session_set_memory_pressure_settings :: proc(settings: ^MemoryPressureSettings) ---
		network_session_set_persistent_credential_storage_enabled :: proc(session: ^NetworkSession, enabled: glib.boolean) ---
		network_session_set_proxy_settings :: proc(session: ^NetworkSession, proxy_mode: NetworkProxyMode, proxy_settings: ^NetworkProxySettings) ---
		network_session_set_tls_errors_policy :: proc(session: ^NetworkSession, policy: TLSErrorsPolicy) ---
		notification_clicked :: proc(notification: ^Notification) ---
		notification_close :: proc(notification: ^Notification) ---
		notification_get_body :: proc(notification: ^Notification) -> cstring ---
		notification_get_id :: proc(notification: ^Notification) -> glib.uint64 ---
		notification_get_tag :: proc(notification: ^Notification) -> cstring ---
		notification_get_title :: proc(notification: ^Notification) -> cstring ---
		notification_get_type :: proc() -> gobj.Type ---
		notification_permission_request_get_type :: proc() -> gobj.Type ---
		option_menu_activate_item :: proc(menu: ^OptionMenu, index: glib.uint_) ---
		option_menu_close :: proc(menu: ^OptionMenu) ---
		option_menu_get_event :: proc(menu: ^OptionMenu) -> ^gtk.Event ---
		option_menu_get_item :: proc(menu: ^OptionMenu, index: glib.uint_) -> ^OptionMenuItem ---
		option_menu_get_n_items :: proc(menu: ^OptionMenu) -> glib.uint_ ---
		option_menu_get_type :: proc() -> gobj.Type ---
		option_menu_item_copy :: proc(item: ^OptionMenuItem) -> ^OptionMenuItem ---
		option_menu_item_free :: proc(item: ^OptionMenuItem) ---
		option_menu_item_get_label :: proc(item: ^OptionMenuItem) -> cstring ---
		option_menu_item_get_tooltip :: proc(item: ^OptionMenuItem) -> cstring ---
		option_menu_item_get_type :: proc() -> gobj.Type ---
		option_menu_item_is_enabled :: proc(item: ^OptionMenuItem) -> glib.boolean ---
		option_menu_item_is_group_child :: proc(item: ^OptionMenuItem) -> glib.boolean ---
		option_menu_item_is_group_label :: proc(item: ^OptionMenuItem) -> glib.boolean ---
		option_menu_item_is_selected :: proc(item: ^OptionMenuItem) -> glib.boolean ---
		option_menu_select_item :: proc(menu: ^OptionMenu, index: glib.uint_) ---
		permission_request_allow :: proc(request: ^PermissionRequest) ---
		permission_request_deny :: proc(request: ^PermissionRequest) ---
		permission_request_get_type :: proc() -> gobj.Type ---
		permission_state_get_type :: proc() -> gobj.Type ---
		permission_state_query_finish :: proc(query: ^PermissionStateQuery, state: PermissionState) ---
		permission_state_query_get_name :: proc(query: ^PermissionStateQuery) -> cstring ---
		permission_state_query_get_security_origin :: proc(query: ^PermissionStateQuery) -> ^SecurityOrigin ---
		permission_state_query_get_type :: proc() -> gobj.Type ---
		permission_state_query_ref :: proc(query: ^PermissionStateQuery) -> ^PermissionStateQuery ---
		permission_state_query_unref :: proc(query: ^PermissionStateQuery) ---
		pointer_lock_permission_request_get_type :: proc() -> gobj.Type ---
		policy_decision_download :: proc(decision: ^PolicyDecision) ---
		policy_decision_get_type :: proc() -> gobj.Type ---
		policy_decision_ignore :: proc(decision: ^PolicyDecision) ---
		policy_decision_type_get_type :: proc() -> gobj.Type ---
		policy_decision_use :: proc(decision: ^PolicyDecision) ---
		policy_decision_use_with_policies :: proc(decision: ^PolicyDecision, policies: ^WebsitePolicies) ---
		policy_error_get_type :: proc() -> gobj.Type ---
		policy_error_quark :: proc() -> glib.Quark ---
		print_error_get_type :: proc() -> gobj.Type ---
		print_error_quark :: proc() -> glib.Quark ---
		print_operation_get_page_setup :: proc(print_operation: ^PrintOperation) -> ^gtk.PageSetup ---
		print_operation_get_print_settings :: proc(print_operation: ^PrintOperation) -> ^gtk.PrintSettings ---
		print_operation_get_type :: proc() -> gobj.Type ---
		print_operation_new :: proc(web_view: ^WebView) -> ^PrintOperation ---
		print_operation_print :: proc(print_operation: ^PrintOperation) ---
		print_operation_response_get_type :: proc() -> gobj.Type ---
		print_operation_run_dialog :: proc(print_operation: ^PrintOperation, parent: ^gtk.Window) -> PrintOperationResponse ---
		print_operation_set_page_setup :: proc(print_operation: ^PrintOperation, page_setup: ^gtk.PageSetup) ---
		print_operation_set_print_settings :: proc(print_operation: ^PrintOperation, print_settings: ^gtk.PrintSettings) ---
		response_policy_decision_get_request :: proc(decision: ^ResponsePolicyDecision) -> ^URIRequest ---
		response_policy_decision_get_response :: proc(decision: ^ResponsePolicyDecision) -> ^URIResponse ---
		response_policy_decision_get_type :: proc() -> gobj.Type ---
		response_policy_decision_is_main_frame_main_resource :: proc(decision: ^ResponsePolicyDecision) -> glib.boolean ---
		response_policy_decision_is_mime_type_supported :: proc(decision: ^ResponsePolicyDecision) -> glib.boolean ---
		save_mode_get_type :: proc() -> gobj.Type ---
		script_dialog_close :: proc(dialog: ^ScriptDialog) ---
		script_dialog_confirm_set_confirmed :: proc(dialog: ^ScriptDialog, confirmed: glib.boolean) ---
		script_dialog_get_dialog_type :: proc(dialog: ^ScriptDialog) -> ScriptDialogType ---
		script_dialog_get_message :: proc(dialog: ^ScriptDialog) -> cstring ---
		script_dialog_get_type :: proc() -> gobj.Type ---
		script_dialog_prompt_get_default_text :: proc(dialog: ^ScriptDialog) -> cstring ---
		script_dialog_prompt_set_text :: proc(dialog: ^ScriptDialog, text: cstring) ---
		script_dialog_ref :: proc(dialog: ^ScriptDialog) -> ^ScriptDialog ---
		script_dialog_type_get_type :: proc() -> gobj.Type ---
		script_dialog_unref :: proc(dialog: ^ScriptDialog) ---
		script_message_reply_get_type :: proc() -> gobj.Type ---
		script_message_reply_ref :: proc(script_message_reply: ^ScriptMessageReply) -> ^ScriptMessageReply ---
		script_message_reply_return_error_message :: proc(script_message_reply: ^ScriptMessageReply, error_message: cstring) ---
		script_message_reply_return_value :: proc(script_message_reply: ^ScriptMessageReply, reply_value: ^jsc.Value) ---
		script_message_reply_unref :: proc(script_message_reply: ^ScriptMessageReply) ---
		security_manager_get_type :: proc() -> gobj.Type ---
		security_manager_register_uri_scheme_as_cors_enabled :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_register_uri_scheme_as_display_isolated :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_register_uri_scheme_as_empty_document :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_register_uri_scheme_as_local :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_register_uri_scheme_as_no_access :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_register_uri_scheme_as_secure :: proc(security_manager: ^SecurityManager, scheme: cstring) ---
		security_manager_uri_scheme_is_cors_enabled :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_manager_uri_scheme_is_display_isolated :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_manager_uri_scheme_is_empty_document :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_manager_uri_scheme_is_local :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_manager_uri_scheme_is_no_access :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_manager_uri_scheme_is_secure :: proc(security_manager: ^SecurityManager, scheme: cstring) -> glib.boolean ---
		security_origin_get_host :: proc(origin: ^SecurityOrigin) -> cstring ---
		security_origin_get_port :: proc(origin: ^SecurityOrigin) -> glib.uint16 ---
		security_origin_get_protocol :: proc(origin: ^SecurityOrigin) -> cstring ---
		security_origin_get_type :: proc() -> gobj.Type ---
		security_origin_new :: proc(protocol: cstring, host: cstring, port: glib.uint16) -> ^SecurityOrigin ---
		security_origin_new_for_uri :: proc(uri: cstring) -> ^SecurityOrigin ---
		security_origin_ref :: proc(origin: ^SecurityOrigin) -> ^SecurityOrigin ---
		security_origin_to_string :: proc(origin: ^SecurityOrigin) -> cstring ---
		security_origin_unref :: proc(origin: ^SecurityOrigin) ---
		settings_apply_from_key_file :: proc(settings: ^Settings, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		settings_font_size_to_pixels :: proc(points: glib.uint32) -> glib.uint32 ---
		settings_font_size_to_points :: proc(pixels: glib.uint32) -> glib.uint32 ---
		settings_get_all_features :: proc() -> ^FeatureList ---
		settings_get_allow_file_access_from_file_urls :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_allow_modal_dialogs :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_allow_top_navigation_to_data_urls :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_allow_universal_access_from_file_urls :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_auto_load_images :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_cursive_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_default_charset :: proc(settings: ^Settings) -> cstring ---
		settings_get_default_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_default_font_size :: proc(settings: ^Settings) -> glib.uint32 ---
		settings_get_default_monospace_font_size :: proc(settings: ^Settings) -> glib.uint32 ---
		settings_get_development_features :: proc() -> ^FeatureList ---
		settings_get_disable_web_security :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_draw_compositing_indicators :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_2d_canvas_acceleration :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_back_forward_navigation_gestures :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_caret_browsing :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_developer_extras :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_dns_prefetching :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_encrypted_media :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_fullscreen :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_html5_database :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_html5_local_storage :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_hyperlink_auditing :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_javascript :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_javascript_markup :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_media :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_media_capabilities :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_media_stream :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_mediasource :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_mock_capture_devices :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_offline_web_application_cache :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_page_cache :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_resizable_text_areas :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_site_specific_quirks :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_smooth_scrolling :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_spatial_navigation :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_tabs_to_links :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_webaudio :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_webgl :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_webrtc :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_enable_write_console_messages_to_stdout :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_experimental_features :: proc() -> ^FeatureList ---
		settings_get_fantasy_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_feature_enabled :: proc(settings: ^Settings, feature: ^Feature) -> glib.boolean ---
		settings_get_hardware_acceleration_policy :: proc(settings: ^Settings) -> HardwareAccelerationPolicy ---
		settings_get_javascript_can_access_clipboard :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_javascript_can_open_windows_automatically :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_load_icons_ignoring_image_load_setting :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_math_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_media_content_types_requiring_hardware_support :: proc(settings: ^Settings) -> cstring ---
		settings_get_media_playback_allows_inline :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_media_playback_requires_user_gesture :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_minimum_font_size :: proc(settings: ^Settings) -> glib.uint32 ---
		settings_get_monospace_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_pictograph_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_print_backgrounds :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_sans_serif_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_serif_font_family :: proc(settings: ^Settings) -> cstring ---
		settings_get_type :: proc() -> gobj.Type ---
		settings_get_user_agent :: proc(settings: ^Settings) -> cstring ---
		settings_get_webrtc_udp_ports_range :: proc(settings: ^Settings) -> cstring ---
		settings_get_zoom_text_only :: proc(settings: ^Settings) -> glib.boolean ---
		settings_new :: proc() -> ^Settings ---
		settings_new_with_settings :: proc(first_setting_name: cstring, #c_vararg var_args: ..any) -> ^Settings ---
		settings_set_allow_file_access_from_file_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---
		settings_set_allow_modal_dialogs :: proc(settings: ^Settings, allowed: glib.boolean) ---
		settings_set_allow_top_navigation_to_data_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---
		settings_set_allow_universal_access_from_file_urls :: proc(settings: ^Settings, allowed: glib.boolean) ---
		settings_set_auto_load_images :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_cursive_font_family :: proc(settings: ^Settings, cursive_font_family: cstring) ---
		settings_set_default_charset :: proc(settings: ^Settings, default_charset: cstring) ---
		settings_set_default_font_family :: proc(settings: ^Settings, default_font_family: cstring) ---
		settings_set_default_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---
		settings_set_default_monospace_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---
		settings_set_disable_web_security :: proc(settings: ^Settings, disabled: glib.boolean) ---
		settings_set_draw_compositing_indicators :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_2d_canvas_acceleration :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_back_forward_navigation_gestures :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_caret_browsing :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_developer_extras :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_dns_prefetching :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_encrypted_media :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_fullscreen :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_html5_database :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_html5_local_storage :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_hyperlink_auditing :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_javascript :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_javascript_markup :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_media :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_media_capabilities :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_media_stream :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_mediasource :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_mock_capture_devices :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_offline_web_application_cache :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_page_cache :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_resizable_text_areas :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_site_specific_quirks :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_smooth_scrolling :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_spatial_navigation :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_tabs_to_links :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_webaudio :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_webgl :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_webrtc :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_enable_write_console_messages_to_stdout :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_fantasy_font_family :: proc(settings: ^Settings, fantasy_font_family: cstring) ---
		settings_set_feature_enabled :: proc(settings: ^Settings, feature: ^Feature, enabled: glib.boolean) ---
		settings_set_hardware_acceleration_policy :: proc(settings: ^Settings, policy: HardwareAccelerationPolicy) ---
		settings_set_javascript_can_access_clipboard :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_javascript_can_open_windows_automatically :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_load_icons_ignoring_image_load_setting :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_math_font_family :: proc(settings: ^Settings, math_font_family: cstring) ---
		settings_set_media_content_types_requiring_hardware_support :: proc(settings: ^Settings, content_types: cstring) ---
		settings_set_media_playback_allows_inline :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_media_playback_requires_user_gesture :: proc(settings: ^Settings, enabled: glib.boolean) ---
		settings_set_minimum_font_size :: proc(settings: ^Settings, font_size: glib.uint32) ---
		settings_set_monospace_font_family :: proc(settings: ^Settings, monospace_font_family: cstring) ---
		settings_set_pictograph_font_family :: proc(settings: ^Settings, pictograph_font_family: cstring) ---
		settings_set_print_backgrounds :: proc(settings: ^Settings, print_backgrounds: glib.boolean) ---
		settings_set_sans_serif_font_family :: proc(settings: ^Settings, sans_serif_font_family: cstring) ---
		settings_set_serif_font_family :: proc(settings: ^Settings, serif_font_family: cstring) ---
		settings_set_user_agent :: proc(settings: ^Settings, user_agent: cstring) ---
		settings_set_user_agent_with_application_details :: proc(settings: ^Settings, application_name: cstring, application_version: cstring) ---
		settings_set_webrtc_udp_ports_range :: proc(settings: ^Settings, udp_port_range: cstring) ---
		settings_set_zoom_text_only :: proc(settings: ^Settings, zoom_text_only: glib.boolean) ---
		snapshot_error_get_type :: proc() -> gobj.Type ---
		snapshot_error_quark :: proc() -> glib.Quark ---
		snapshot_options_get_type :: proc() -> gobj.Type ---
		snapshot_region_get_type :: proc() -> gobj.Type ---
		tls_errors_policy_get_type :: proc() -> gobj.Type ---
		uri_for_display :: proc(uri: cstring) -> cstring ---
		uri_request_get_http_headers :: proc(request: ^URIRequest) -> ^soup.MessageHeaders ---
		uri_request_get_http_method :: proc(request: ^URIRequest) -> cstring ---
		uri_request_get_type :: proc() -> gobj.Type ---
		uri_request_get_uri :: proc(request: ^URIRequest) -> cstring ---
		uri_request_new :: proc(uri: cstring) -> ^URIRequest ---
		uri_request_set_uri :: proc(request: ^URIRequest, uri: cstring) ---
		uri_response_get_content_length :: proc(response: ^URIResponse) -> glib.uint64 ---
		uri_response_get_http_headers :: proc(response: ^URIResponse) -> ^soup.MessageHeaders ---
		uri_response_get_mime_type :: proc(response: ^URIResponse) -> cstring ---
		uri_response_get_status_code :: proc(response: ^URIResponse) -> glib.uint_ ---
		uri_response_get_suggested_filename :: proc(response: ^URIResponse) -> cstring ---
		uri_response_get_type :: proc() -> gobj.Type ---
		uri_response_get_uri :: proc(response: ^URIResponse) -> cstring ---
		uri_scheme_request_finish :: proc(request: ^URISchemeRequest, stream: ^gio.InputStream, stream_length: glib.int64, content_type: cstring) ---
		uri_scheme_request_finish_error :: proc(request: ^URISchemeRequest, error: ^glib.Error) ---
		uri_scheme_request_finish_with_response :: proc(request: ^URISchemeRequest, response: ^URISchemeResponse) ---
		uri_scheme_request_get_http_body :: proc(request: ^URISchemeRequest) -> ^gio.InputStream ---
		uri_scheme_request_get_http_headers :: proc(request: ^URISchemeRequest) -> ^soup.MessageHeaders ---
		uri_scheme_request_get_http_method :: proc(request: ^URISchemeRequest) -> cstring ---
		uri_scheme_request_get_path :: proc(request: ^URISchemeRequest) -> cstring ---
		uri_scheme_request_get_scheme :: proc(request: ^URISchemeRequest) -> cstring ---
		uri_scheme_request_get_type :: proc() -> gobj.Type ---
		uri_scheme_request_get_uri :: proc(request: ^URISchemeRequest) -> cstring ---
		uri_scheme_request_get_web_view :: proc(request: ^URISchemeRequest) -> ^WebView ---
		uri_scheme_response_get_type :: proc() -> gobj.Type ---
		uri_scheme_response_new :: proc(input_stream: ^gio.InputStream, stream_length: glib.int64) -> ^URISchemeResponse ---
		uri_scheme_response_set_content_type :: proc(response: ^URISchemeResponse, content_type: cstring) ---
		uri_scheme_response_set_http_headers :: proc(response: ^URISchemeResponse, headers: ^soup.MessageHeaders) ---
		uri_scheme_response_set_status :: proc(response: ^URISchemeResponse, status_code: glib.uint_, reason_phrase: cstring) ---
		user_content_filter_error_get_type :: proc() -> gobj.Type ---
		user_content_filter_error_quark :: proc() -> glib.Quark ---
		user_content_filter_get_identifier :: proc(user_content_filter: ^UserContentFilter) -> cstring ---
		user_content_filter_get_type :: proc() -> gobj.Type ---
		user_content_filter_ref :: proc(user_content_filter: ^UserContentFilter) -> ^UserContentFilter ---
		user_content_filter_store_fetch_identifiers :: proc(store: ^UserContentFilterStore, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		user_content_filter_store_fetch_identifiers_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult) -> ^cstring ---
		user_content_filter_store_get_path :: proc(store: ^UserContentFilterStore) -> cstring ---
		user_content_filter_store_get_type :: proc() -> gobj.Type ---
		user_content_filter_store_load :: proc(store: ^UserContentFilterStore, identifier: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		user_content_filter_store_load_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---
		user_content_filter_store_new :: proc(storage_path: cstring) -> ^UserContentFilterStore ---
		user_content_filter_store_remove :: proc(store: ^UserContentFilterStore, identifier: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		user_content_filter_store_remove_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		user_content_filter_store_save :: proc(store: ^UserContentFilterStore, identifier: cstring, source: ^glib.Bytes, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		user_content_filter_store_save_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---
		user_content_filter_store_save_from_file :: proc(store: ^UserContentFilterStore, identifier: cstring, file: ^gio.File, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		user_content_filter_store_save_from_file_finish :: proc(store: ^UserContentFilterStore, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserContentFilter ---
		user_content_filter_unref :: proc(user_content_filter: ^UserContentFilter) ---
		user_content_injected_frames_get_type :: proc() -> gobj.Type ---
		user_content_manager_add_filter :: proc(manager: ^UserContentManager, filter: ^UserContentFilter) ---
		user_content_manager_add_script :: proc(manager: ^UserContentManager, script: ^UserScript) ---
		user_content_manager_add_style_sheet :: proc(manager: ^UserContentManager, stylesheet: ^UserStyleSheet) ---
		user_content_manager_get_type :: proc() -> gobj.Type ---
		user_content_manager_new :: proc() -> ^UserContentManager ---
		user_content_manager_register_script_message_handler :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) -> glib.boolean ---
		user_content_manager_register_script_message_handler_with_reply :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) -> glib.boolean ---
		user_content_manager_remove_all_filters :: proc(manager: ^UserContentManager) ---
		user_content_manager_remove_all_scripts :: proc(manager: ^UserContentManager) ---
		user_content_manager_remove_all_style_sheets :: proc(manager: ^UserContentManager) ---
		user_content_manager_remove_filter :: proc(manager: ^UserContentManager, filter: ^UserContentFilter) ---
		user_content_manager_remove_filter_by_id :: proc(manager: ^UserContentManager, filter_id: cstring) ---
		user_content_manager_remove_script :: proc(manager: ^UserContentManager, script: ^UserScript) ---
		user_content_manager_remove_style_sheet :: proc(manager: ^UserContentManager, stylesheet: ^UserStyleSheet) ---
		user_content_manager_unregister_script_message_handler :: proc(manager: ^UserContentManager, name: cstring, world_name: cstring) ---
		user_media_permission_is_for_audio_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---
		user_media_permission_is_for_display_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---
		user_media_permission_is_for_video_device :: proc(request: ^UserMediaPermissionRequest) -> glib.boolean ---
		user_media_permission_request_get_type :: proc() -> gobj.Type ---
		user_message_error_get_type :: proc() -> gobj.Type ---
		user_message_error_quark :: proc() -> glib.Quark ---
		user_message_get_fd_list :: proc(message: ^UserMessage) -> ^gio.UnixFDList ---
		user_message_get_name :: proc(message: ^UserMessage) -> cstring ---
		user_message_get_parameters :: proc(message: ^UserMessage) -> ^glib.Variant ---
		user_message_get_type :: proc() -> gobj.Type ---
		user_message_new :: proc(name: cstring, parameters: ^glib.Variant) -> ^UserMessage ---
		user_message_new_with_fd_list :: proc(name: cstring, parameters: ^glib.Variant, fd_list: ^gio.UnixFDList) -> ^UserMessage ---
		user_message_send_reply :: proc(message: ^UserMessage, reply: ^UserMessage) ---
		user_script_get_type :: proc() -> gobj.Type ---
		user_script_injection_time_get_type :: proc() -> gobj.Type ---
		user_script_new :: proc(source: cstring, injected_frames: UserContentInjectedFrames, injection_time: UserScriptInjectionTime, allow_list: ^cstring, block_list: ^cstring) -> ^UserScript ---
		user_script_new_for_world :: proc(source: cstring, injected_frames: UserContentInjectedFrames, injection_time: UserScriptInjectionTime, world_name: cstring, allow_list: ^cstring, block_list: ^cstring) -> ^UserScript ---
		user_script_ref :: proc(user_script: ^UserScript) -> ^UserScript ---
		user_script_unref :: proc(user_script: ^UserScript) ---
		user_style_level_get_type :: proc() -> gobj.Type ---
		user_style_sheet_get_type :: proc() -> gobj.Type ---
		user_style_sheet_new :: proc(source: cstring, injected_frames: UserContentInjectedFrames, level: UserStyleLevel, allow_list: ^cstring, block_list: ^cstring) -> ^UserStyleSheet ---
		user_style_sheet_new_for_world :: proc(source: cstring, injected_frames: UserContentInjectedFrames, level: UserStyleLevel, world_name: cstring, allow_list: ^cstring, block_list: ^cstring) -> ^UserStyleSheet ---
		user_style_sheet_ref :: proc(user_style_sheet: ^UserStyleSheet) -> ^UserStyleSheet ---
		user_style_sheet_unref :: proc(user_style_sheet: ^UserStyleSheet) ---
		web_context_add_path_to_sandbox :: proc(context_p: ^WebContext, path: cstring, read_only: glib.boolean) ---
		web_context_get_cache_model :: proc(context_p: ^WebContext) -> CacheModel ---
		web_context_get_default :: proc() -> ^WebContext ---
		web_context_get_geolocation_manager :: proc(context_p: ^WebContext) -> ^eolocationManager ---
		web_context_get_network_session_for_automation :: proc(context_p: ^WebContext) -> ^NetworkSession ---
		web_context_get_security_manager :: proc(context_p: ^WebContext) -> ^SecurityManager ---
		web_context_get_spell_checking_enabled :: proc(context_p: ^WebContext) -> glib.boolean ---
		web_context_get_spell_checking_languages :: proc(context_p: ^WebContext) -> ^cstring ---
		web_context_get_time_zone_override :: proc(context_p: ^WebContext) -> cstring ---
		web_context_get_type :: proc() -> gobj.Type ---
		web_context_initialize_notification_permissions :: proc(context_p: ^WebContext, allowed_origins: ^glib.List, disallowed_origins: ^glib.List) ---
		web_context_is_automation_allowed :: proc(context_p: ^WebContext) -> glib.boolean ---
		web_context_new :: proc() -> ^WebContext ---
		web_context_register_uri_scheme :: proc(context_p: ^WebContext, scheme: cstring, callback: URISchemeRequestCallback, user_data: glib.pointer, user_data_destroy_func: glib.DestroyNotify) ---
		web_context_send_message_to_all_extensions :: proc(context_p: ^WebContext, message: ^UserMessage) ---
		web_context_set_automation_allowed :: proc(context_p: ^WebContext, allowed: glib.boolean) ---
		web_context_set_cache_model :: proc(context_p: ^WebContext, cache_model: CacheModel) ---
		web_context_set_preferred_languages :: proc(context_p: ^WebContext, languages: [^]cstring) ---
		web_context_set_spell_checking_enabled :: proc(context_p: ^WebContext, enabled: glib.boolean) ---
		web_context_set_spell_checking_languages :: proc(context_p: ^WebContext, languages: [^]cstring) ---
		web_context_set_web_process_extensions_directory :: proc(context_p: ^WebContext, directory: cstring) ---
		web_context_set_web_process_extensions_initialization_user_data :: proc(context_p: ^WebContext, user_data: ^glib.Variant) ---
		web_extension_error_get_type :: proc() -> gobj.Type ---
		web_extension_error_quark :: proc() -> glib.Quark ---
		web_extension_get_action_icon :: proc(extension: ^WebExtension, width: glib.double, height: glib.double) -> ^gio.Icon ---
		web_extension_get_all_requested_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---
		web_extension_get_default_locale :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_display_action_label :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_display_description :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_display_name :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_display_short_name :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_display_version :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_has_background_content :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_commands :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_content_modification_rules :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_injected_content :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_options_page :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_override_new_tab_page :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_has_persistent_background_content :: proc(extension: ^WebExtension) -> glib.boolean ---
		web_extension_get_icon :: proc(extension: ^WebExtension, width: glib.double, height: glib.double) -> ^gio.Icon ---
		web_extension_get_manifest_version :: proc(extension: ^WebExtension) -> glib.double ---
		web_extension_get_optional_permission_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---
		web_extension_get_optional_permissions :: proc(extension: ^WebExtension) -> ^cstring ---
		web_extension_get_path :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_get_requested_permission_match_patterns :: proc(extension: ^WebExtension) -> ^^WebExtensionMatchPattern ---
		web_extension_get_requested_permissions :: proc(extension: ^WebExtension) -> ^cstring ---
		web_extension_get_type :: proc() -> gobj.Type ---
		web_extension_get_version :: proc(extension: ^WebExtension) -> cstring ---
		web_extension_match_pattern_error_get_type :: proc() -> gobj.Type ---
		web_extension_match_pattern_error_quark :: proc() -> glib.Quark ---
		web_extension_match_pattern_get_host :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---
		web_extension_match_pattern_get_matches_all_hosts :: proc(matchPattern: ^WebExtensionMatchPattern) -> glib.boolean ---
		web_extension_match_pattern_get_matches_all_urls :: proc(matchPattern: ^WebExtensionMatchPattern) -> glib.boolean ---
		web_extension_match_pattern_get_path :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---
		web_extension_match_pattern_get_scheme :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---
		web_extension_match_pattern_get_string :: proc(matchPattern: ^WebExtensionMatchPattern) -> cstring ---
		web_extension_match_pattern_get_type :: proc() -> gobj.Type ---
		web_extension_match_pattern_matches_pattern :: proc(matchPattern: ^WebExtensionMatchPattern, pattern: ^WebExtensionMatchPattern, options: WebExtensionMatchPatternOptions) -> glib.boolean ---
		web_extension_match_pattern_matches_url :: proc(matchPattern: ^WebExtensionMatchPattern, url: cstring, options: WebExtensionMatchPatternOptions) -> glib.boolean ---
		web_extension_match_pattern_new_all_hosts_and_schemes :: proc() -> ^WebExtensionMatchPattern ---
		web_extension_match_pattern_new_all_urls :: proc() -> ^WebExtensionMatchPattern ---
		web_extension_match_pattern_new_with_scheme :: proc(scheme: cstring, host: cstring, path: cstring, error: ^^glib.Error) -> ^WebExtensionMatchPattern ---
		web_extension_match_pattern_new_with_string :: proc(string_p: cstring, error: ^^glib.Error) -> ^WebExtensionMatchPattern ---
		web_extension_match_pattern_options_get_type :: proc() -> gobj.Type ---
		web_extension_match_pattern_ref :: proc(matchPattern: ^WebExtensionMatchPattern) -> ^WebExtensionMatchPattern ---
		web_extension_match_pattern_register_custom_URL_scheme :: proc(urlScheme: cstring) ---
		web_extension_match_pattern_register_custom_url_scheme :: proc(urlScheme: cstring) ---
		web_extension_match_pattern_unref :: proc(matchPattern: ^WebExtensionMatchPattern) ---
		web_extension_mode_get_type :: proc() -> gobj.Type ---
		web_extension_new :: proc(extension_path: cstring, error: ^^glib.Error) -> ^WebExtension ---
		web_extension_supports_manifest_version :: proc(extension: ^WebExtension, manifest_version: glib.double) -> glib.boolean ---
		web_inspector_attach :: proc(inspector: ^WebInspector) ---
		web_inspector_close :: proc(inspector: ^WebInspector) ---
		web_inspector_detach :: proc(inspector: ^WebInspector) ---
		web_inspector_get_attached_height :: proc(inspector: ^WebInspector) -> glib.uint_ ---
		web_inspector_get_can_attach :: proc(inspector: ^WebInspector) -> glib.boolean ---
		web_inspector_get_inspected_uri :: proc(inspector: ^WebInspector) -> cstring ---
		web_inspector_get_type :: proc() -> gobj.Type ---
		web_inspector_get_web_view :: proc(inspector: ^WebInspector) -> ^WebViewBase ---
		web_inspector_is_attached :: proc(inspector: ^WebInspector) -> glib.boolean ---
		web_inspector_show :: proc(inspector: ^WebInspector) ---
		web_process_termination_reason_get_type :: proc() -> gobj.Type ---
		web_resource_get_data :: proc(resource: ^WebResource, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_resource_get_data_finish :: proc(resource: ^WebResource, result: ^gio.AsyncResult, length: ^glib.size, error: ^^glib.Error) -> ^glib.uchar ---
		web_resource_get_response :: proc(resource: ^WebResource) -> ^URIResponse ---
		web_resource_get_type :: proc() -> gobj.Type ---
		web_resource_get_uri :: proc(resource: ^WebResource) -> cstring ---
		web_view_base_get_type :: proc() -> gobj.Type ---
		web_view_call_async_javascript_function :: proc(web_view: ^WebView, body: cstring, length: glib.ssize, arguments: ^glib.Variant, world_name: cstring, source_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_call_async_javascript_function_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^jsc.Value ---
		web_view_can_execute_editing_command :: proc(web_view: ^WebView, command: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_can_execute_editing_command_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		web_view_can_go_back :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_can_go_forward :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_can_show_mime_type :: proc(web_view: ^WebView, mime_type: cstring) -> glib.boolean ---
		web_view_download_uri :: proc(web_view: ^WebView, uri: cstring) -> ^Download ---
		web_view_evaluate_javascript :: proc(web_view: ^WebView, script: cstring, length: glib.ssize, world_name: cstring, source_uri: cstring, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_evaluate_javascript_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^jsc.Value ---
		web_view_execute_editing_command :: proc(web_view: ^WebView, command: cstring) ---
		web_view_execute_editing_command_with_argument :: proc(web_view: ^WebView, command: cstring, argument: cstring) ---
		web_view_get_automation_presentation_type :: proc(web_view: ^WebView) -> AutomationBrowsingContextPresentation ---
		web_view_get_back_forward_list :: proc(web_view: ^WebView) -> ^BackForwardList ---
		web_view_get_background_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) ---
		web_view_get_camera_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---
		web_view_get_context :: proc(web_view: ^WebView) -> ^WebContext ---
		web_view_get_custom_charset :: proc(web_view: ^WebView) -> cstring ---
		web_view_get_default_content_security_policy :: proc(web_view: ^WebView) -> cstring ---
		web_view_get_display_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---
		web_view_get_editor_state :: proc(web_view: ^WebView) -> ^EditorState ---
		web_view_get_estimated_load_progress :: proc(web_view: ^WebView) -> glib.double ---
		web_view_get_favicon :: proc(web_view: ^WebView) -> ^gtk.Texture ---
		web_view_get_find_controller :: proc(web_view: ^WebView) -> ^FindController ---
		web_view_get_input_method_context :: proc(web_view: ^WebView) -> ^InputMethodContext ---
		web_view_get_inspector :: proc(web_view: ^WebView) -> ^WebInspector ---
		web_view_get_is_muted :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_get_is_web_process_responsive :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_get_main_resource :: proc(web_view: ^WebView) -> ^WebResource ---
		web_view_get_microphone_capture_state :: proc(web_view: ^WebView) -> MediaCaptureState ---
		web_view_get_network_session :: proc(web_view: ^WebView) -> ^NetworkSession ---
		web_view_get_page_id :: proc(web_view: ^WebView) -> glib.uint64 ---
		web_view_get_session_state :: proc(web_view: ^WebView) -> ^WebViewSessionState ---
		web_view_get_settings :: proc(web_view: ^WebView) -> ^Settings ---
		web_view_get_snapshot :: proc(web_view: ^WebView, region: SnapshotRegion, options: SnapshotOptions, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_get_snapshot_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gtk.Texture ---
		web_view_get_theme_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) -> glib.boolean ---
		web_view_get_title :: proc(web_view: ^WebView) -> cstring ---
		web_view_get_tls_info :: proc(web_view: ^WebView, certificate: ^^gio.TlsCertificate, errors: ^gio.TlsCertificateFlags) -> glib.boolean ---
		web_view_get_type :: proc() -> gobj.Type ---
		web_view_get_uri :: proc(web_view: ^WebView) -> cstring ---
		web_view_get_user_content_manager :: proc(web_view: ^WebView) -> ^UserContentManager ---
		web_view_get_web_extension_mode :: proc(web_view: ^WebView) -> WebExtensionMode ---
		web_view_get_website_policies :: proc(web_view: ^WebView) -> ^WebsitePolicies ---
		web_view_get_window_properties :: proc(web_view: ^WebView) -> ^WindowProperties ---
		web_view_get_zoom_level :: proc(web_view: ^WebView) -> glib.double ---
		web_view_go_back :: proc(web_view: ^WebView) ---
		web_view_go_forward :: proc(web_view: ^WebView) ---
		web_view_go_to_back_forward_list_item :: proc(web_view: ^WebView, list_item: ^BackForwardListItem) ---
		web_view_is_controlled_by_automation :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_is_editable :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_is_immersive_mode_enabled :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_is_loading :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_is_playing_audio :: proc(web_view: ^WebView) -> glib.boolean ---
		web_view_leave_immersive_mode :: proc(web_view: ^WebView) ---
		web_view_load_alternate_html :: proc(web_view: ^WebView, content: cstring, content_uri: cstring, base_uri: cstring) ---
		web_view_load_bytes :: proc(web_view: ^WebView, bytes: ^glib.Bytes, mime_type: cstring, encoding: cstring, base_uri: cstring) ---
		web_view_load_html :: proc(web_view: ^WebView, content: cstring, base_uri: cstring) ---
		web_view_load_plain_text :: proc(web_view: ^WebView, plain_text: cstring) ---
		web_view_load_request :: proc(web_view: ^WebView, request: ^URIRequest) ---
		web_view_load_uri :: proc(web_view: ^WebView, uri: cstring) ---
		web_view_new :: proc() -> ^gtk.Widget ---
		web_view_reload :: proc(web_view: ^WebView) ---
		web_view_reload_bypass_cache :: proc(web_view: ^WebView) ---
		web_view_restore_session_state :: proc(web_view: ^WebView, state: ^WebViewSessionState) ---
		web_view_save :: proc(web_view: ^WebView, save_mode: SaveMode, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_save_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---
		web_view_save_to_file :: proc(web_view: ^WebView, file: ^gio.File, save_mode: SaveMode, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_save_to_file_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		web_view_send_message_to_page :: proc(web_view: ^WebView, message: ^UserMessage, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		web_view_send_message_to_page_finish :: proc(web_view: ^WebView, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^UserMessage ---
		web_view_session_state_get_type :: proc() -> gobj.Type ---
		web_view_session_state_new :: proc(data: ^glib.Bytes) -> ^WebViewSessionState ---
		web_view_session_state_ref :: proc(state: ^WebViewSessionState) -> ^WebViewSessionState ---
		web_view_session_state_serialize :: proc(state: ^WebViewSessionState) -> ^glib.Bytes ---
		web_view_session_state_unref :: proc(state: ^WebViewSessionState) ---
		web_view_set_background_color :: proc(web_view: ^WebView, rgba: ^gtk.RGBA) ---
		web_view_set_camera_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---
		web_view_set_cors_allowlist :: proc(web_view: ^WebView, allowlist: ^cstring) ---
		web_view_set_custom_charset :: proc(web_view: ^WebView, charset: cstring) ---
		web_view_set_display_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---
		web_view_set_editable :: proc(web_view: ^WebView, editable: glib.boolean) ---
		web_view_set_input_method_context :: proc(web_view: ^WebView, context_p: ^InputMethodContext) ---
		web_view_set_is_muted :: proc(web_view: ^WebView, muted: glib.boolean) ---
		web_view_set_microphone_capture_state :: proc(web_view: ^WebView, state: MediaCaptureState) ---
		web_view_set_settings :: proc(web_view: ^WebView, settings: ^Settings) ---
		web_view_set_zoom_level :: proc(web_view: ^WebView, zoom_level: glib.double) ---
		web_view_stop_loading :: proc(web_view: ^WebView) ---
		web_view_terminate_web_process :: proc(web_view: ^WebView) ---
		web_view_try_close :: proc(web_view: ^WebView) ---
		website_data_access_permission_request_get_current_domain :: proc(request: ^WebsiteDataAccessPermissionRequest) -> cstring ---
		website_data_access_permission_request_get_requesting_domain :: proc(request: ^WebsiteDataAccessPermissionRequest) -> cstring ---
		website_data_access_permission_request_get_type :: proc() -> gobj.Type ---
		website_data_get_name :: proc(website_data: ^WebsiteData) -> cstring ---
		website_data_get_size :: proc(website_data: ^WebsiteData, types: WebsiteDataTypes) -> glib.uint64 ---
		website_data_get_type :: proc() -> gobj.Type ---
		website_data_get_types :: proc(website_data: ^WebsiteData) -> WebsiteDataTypes ---
		website_data_manager_clear :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, timespan: glib.TimeSpan, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		website_data_manager_clear_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		website_data_manager_fetch :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		website_data_manager_fetch_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		website_data_manager_get_base_cache_directory :: proc(manager: ^WebsiteDataManager) -> cstring ---
		website_data_manager_get_base_data_directory :: proc(manager: ^WebsiteDataManager) -> cstring ---
		website_data_manager_get_favicon_database :: proc(manager: ^WebsiteDataManager) -> ^FaviconDatabase ---
		website_data_manager_get_favicons_enabled :: proc(manager: ^WebsiteDataManager) -> glib.boolean ---
		website_data_manager_get_itp_summary :: proc(manager: ^WebsiteDataManager, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		website_data_manager_get_itp_summary_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		website_data_manager_get_type :: proc() -> gobj.Type ---
		website_data_manager_is_ephemeral :: proc(manager: ^WebsiteDataManager) -> glib.boolean ---
		website_data_manager_remove :: proc(manager: ^WebsiteDataManager, types: WebsiteDataTypes, website_data: ^glib.List, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		website_data_manager_remove_finish :: proc(manager: ^WebsiteDataManager, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		website_data_manager_set_favicons_enabled :: proc(manager: ^WebsiteDataManager, enabled: glib.boolean) ---
		website_data_ref :: proc(website_data: ^WebsiteData) -> ^WebsiteData ---
		website_data_types_get_type :: proc() -> gobj.Type ---
		website_data_unref :: proc(website_data: ^WebsiteData) ---
		website_policies_get_autoplay_policy :: proc(policies: ^WebsitePolicies) -> AutoplayPolicy ---
		website_policies_get_type :: proc() -> gobj.Type ---
		website_policies_new :: proc() -> ^WebsitePolicies ---
		website_policies_new_with_policies :: proc(first_policy_name: cstring, #c_vararg var_args: ..any) -> ^WebsitePolicies ---
		window_properties_get_fullscreen :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_geometry :: proc(window_properties: ^WindowProperties, geometry: ^gtk.Rectangle) ---
		window_properties_get_locationbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_menubar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_resizable :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_scrollbars_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_statusbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_toolbar_visible :: proc(window_properties: ^WindowProperties) -> glib.boolean ---
		window_properties_get_type :: proc() -> gobj.Type ---
		xr_permission_request_get_consent_optional_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---
		xr_permission_request_get_consent_required_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---
		xr_permission_request_get_granted_features :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---
		xr_permission_request_get_optional_features_requested :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---
		xr_permission_request_get_required_features_requested :: proc(request: ^XRPermissionRequest) -> XRSessionFeatures ---
		xr_permission_request_get_security_origin :: proc(request: ^XRPermissionRequest) -> ^SecurityOrigin ---
		xr_permission_request_get_session_mode :: proc(request: ^XRPermissionRequest) -> XRSessionMode ---
		xr_permission_request_get_type :: proc() -> gobj.Type ---
		xr_permission_request_set_granted_optional_features :: proc(request: ^XRPermissionRequest, granted: XRSessionFeatures) ---
		xr_session_features_get_type :: proc() -> gobj.Type ---
		xr_session_mode_get_type :: proc() -> gobj.Type ---

	types
		ApplicationInfo :: struct #packed {}
		AuthenticationRequest :: struct #packed {}
		AuthenticationRequestClass :: struct {parent_class: gobj.ObjectClass}
		AuthenticationScheme :: enum u32 {DEFAULT = 1, HTTP_BASIC = 2, HTTP_DIGEST = 3, HTML_FORM = 4, NTLM = 5, NEGOTIATE = 6, CLIENT_CERTIFICATE_REQUESTED = 7, SERVER_TRUST_EVALUATION_REQUESTED = 8, CLIENT_CERTIFICATE_PIN_REQUESTED = 9, UNKNOWN = 100}
		AutomationBrowsingContextPresentation :: enum u32 {WINDOW = 0, TAB = 1}
		AutomationSession :: struct #packed {}
		AutomationSessionClass :: struct {parent_class: gobj.ObjectClass}
		AutoplayPolicy :: enum u32 {AUTOPLAY_ALLOW = 0, AUTOPLAY_ALLOW_WITHOUT_SOUND = 1, AUTOPLAY_DENY = 2}
		BackForwardList :: struct #packed {}
		BackForwardListClass :: struct {parent_class: gobj.ObjectClass}
		BackForwardListItem :: struct #packed {}
		BackForwardListItemClass :: struct {parent_class: gobj.InitiallyUnownedClass}
		CacheModel :: enum u32 {DOCUMENT_VIEWER = 0, WEB_BROWSER = 1, DOCUMENT_BROWSER = 2}
		ClipboardPermissionRequest :: struct #packed {}
		ClipboardPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		ColorChooserRequest :: struct #packed {}
		ColorChooserRequestClass :: struct {parent_class: gobj.ObjectClass}
		ContextMenu :: struct #packed {}
		ContextMenuAction :: enum u32 {NO_ACTION = 0, OPEN_LINK = 1, OPEN_LINK_IN_NEW_WINDOW = 2, DOWNLOAD_LINK_TO_DISK = 3, COPY_LINK_TO_CLIPBOARD = 4, OPEN_IMAGE_IN_NEW_WINDOW = 5, DOWNLOAD_IMAGE_TO_DISK = 6, COPY_IMAGE_TO_CLIPBOARD = 7, COPY_IMAGE_URL_TO_CLIPBOARD = 8, OPEN_FRAME_IN_NEW_WINDOW = 9, GO_BACK = 10, GO_FORWARD = 11, STOP = 12, RELOAD = 13, COPY = 14, CUT = 15, PASTE = 16, DELETE = 17, SELECT_ALL = 18, INPUT_METHODS = 19, UNICODE = 20, SPELLING_GUESS = 21, NO_GUESSES_FOUND = 22, IGNORE_SPELLING = 23, LEARN_SPELLING = 24, IGNORE_GRAMMAR = 25, FONT_MENU = 26, BOLD = 27, ITALIC = 28, UNDERLINE = 29, OUTLINE = 30, INSPECT_ELEMENT = 31, OPEN_VIDEO_IN_NEW_WINDOW = 32, OPEN_AUDIO_IN_NEW_WINDOW = 33, COPY_VIDEO_LINK_TO_CLIPBOARD = 34, COPY_AUDIO_LINK_TO_CLIPBOARD = 35, TOGGLE_MEDIA_CONTROLS = 36, TOGGLE_MEDIA_LOOP = 37, ENTER_VIDEO_FULLSCREEN = 38, MEDIA_PLAY = 39, MEDIA_PAUSE = 40, MEDIA_MUTE = 41, DOWNLOAD_VIDEO_TO_DISK = 42, DOWNLOAD_AUDIO_TO_DISK = 43, INSERT_EMOJI = 44, PASTE_AS_PLAIN_TEXT = 45, CUSTOM = 10000}
		ContextMenuClass :: struct {parent_class: gobj.ObjectClass}
		ContextMenuItem :: struct #packed {}
		ContextMenuItemClass :: struct {parent_class: gobj.InitiallyUnownedClass}
		CookieAcceptPolicy :: enum u32 {COOKIE_POLICY_ACCEPT_ALWAYS = 0, COOKIE_POLICY_ACCEPT_NEVER = 1, COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY = 2}
		CookieManager :: struct #packed {}
		CookieManagerClass :: struct {parent_class: gobj.ObjectClass}
		CookiePersistentStorage :: enum u32 {TEXT = 0, SQLITE = 1}
		Credential :: struct #packed {}
		CredentialPersistence :: enum u32 {NONE = 0, FOR_SESSION = 1, PERMANENT = 2}
		DeviceInfoPermissionRequest :: struct #packed {}
		DeviceInfoPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		Download :: struct #packed {}
		DownloadClass :: struct {parent_class: gobj.ObjectClass}
		DownloadError :: enum u32 {NETWORK = 499, CANCELLED_BY_USER = 400, DESTINATION = 401}
		EditorState :: struct #packed {}
		EditorStateClass :: struct {parent_class: gobj.ObjectClass}
		EditorTypingAttributes :: bit_set[EditorTypingAttributesBit]
		EditorTypingAttributesBit :: enum u32 {EDITOR_TYPING_ATTRIBUTE_NONE = 1, EDITOR_TYPING_ATTRIBUTE_BOLD = 2, EDITOR_TYPING_ATTRIBUTE_ITALIC = 3, EDITOR_TYPING_ATTRIBUTE_UNDERLINE = 4, EDITOR_TYPING_ATTRIBUTE_STRIKETHROUGH = 5}
		FaviconDatabase :: struct #packed {}
		FaviconDatabaseClass :: struct {parent_class: gobj.ObjectClass}
		FaviconDatabaseError :: enum u32 {NOT_INITIALIZED = 0, FAVICON_NOT_FOUND = 1, FAVICON_UNKNOWN = 2}
		Feature :: struct #packed {}
		FeatureList :: struct #packed {}
		FeatureStatus :: enum u32 {EMBEDDER = 0, UNSTABLE = 1, INTERNAL = 2, DEVELOPER = 3, TESTABLE = 4, PREVIEW = 5, STABLE = 6, MATURE = 7}
		FileChooserRequest :: struct #packed {}
		FileChooserRequestClass :: struct {parent_class: gobj.ObjectClass}
		FindController :: struct #packed {}
		FindControllerClass :: struct {parent_class: gobj.ObjectClass}
		FindOptions :: bit_set[FindOptionsBit]
		FindOptionsBit :: enum u32 {CASE_INSENSITIVE = 0, AT_WORD_STARTS = 1, TREAT_MEDIAL_CAPITAL_AS_WORD_START = 2, BACKWARDS = 3, WRAP_AROUND = 4}
		FormSubmissionRequest :: struct #packed {}
		FormSubmissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		GeolocationManager :: struct #packed {}
		GeolocationPermissionRequest :: struct #packed {}
		GeolocationPosition :: struct #packed {}
		HardwareAccelerationPolicy :: enum u32 {ALWAYS = 0, NEVER = 1}
		HitTestResult :: struct #packed {}
		HitTestResultClass :: struct {parent_class: gobj.ObjectClass}
		HitTestResultContext :: bit_set[HitTestResultContextBit]
		HitTestResultContextBit :: enum u32 {DOCUMENT = 1, LINK = 2, IMAGE = 3, MEDIA = 4, EDITABLE = 5, SCROLLBAR = 6, SELECTION = 7}
		ITPFirstParty :: struct #packed {}
		ITPThirdParty :: struct #packed {}
		InputHints :: bit_set[InputHintsBit]
		InputHintsBit :: enum u32 {INPUT_HINT_SPELLCHECK = 0, INPUT_HINT_LOWERCASE = 1, INPUT_HINT_UPPERCASE_CHARS = 2, INPUT_HINT_UPPERCASE_WORDS = 3, INPUT_HINT_UPPERCASE_SENTENCES = 4, INPUT_HINT_INHIBIT_OSK = 5}
		InputMethodContext :: struct {parent_instance: gobj.Object, priv: ^InputMethodContextPrivate}
		InputMethodContextClass :: struct {parent_class: gobj.ObjectClass, preedit_started: preedit_started_func_ptr_anon_0, preedit_changed: preedit_changed_func_ptr_anon_1, preedit_finished: preedit_finished_func_ptr_anon_2, committed: committed_func_ptr_anon_3, delete_surrounding: delete_surrounding_func_ptr_anon_4, set_enable_preedit: set_enable_preedit_func_ptr_anon_5, get_preedit: et_preedit_func_ptr_anon_6, filter_key_event: filter_key_event_func_ptr_anon_7, notify_focus_in: notify_focus_in_func_ptr_anon_8, notify_focus_out: notify_focus_out_func_ptr_anon_9, notify_cursor_area: notify_cursor_area_func_ptr_anon_10, notify_surrounding: notify_surrounding_func_ptr_anon_11, reset: reset_func_ptr_anon_12, _webkit_reserved0: _webkit_reserved0_func_ptr_anon_13, _webkit_reserved1: _webkit_reserved1_func_ptr_anon_14, _webkit_reserved2: _webkit_reserved2_func_ptr_anon_15, _webkit_reserved3: _webkit_reserved3_func_ptr_anon_16, _webkit_reserved4: _webkit_reserved4_func_ptr_anon_17, _webkit_reserved5: _webkit_reserved5_func_ptr_anon_18, _webkit_reserved6: _webkit_reserved6_func_ptr_anon_19, _webkit_reserved7: _webkit_reserved7_func_ptr_anon_20, _webkit_reserved8: _webkit_reserved8_func_ptr_anon_21, _webkit_reserved9: _webkit_reserved9_func_ptr_anon_22, _webkit_reserved10: _webkit_reserved10_func_ptr_anon_23, _webkit_reserved11: _webkit_reserved11_func_ptr_anon_24, _webkit_reserved12: _webkit_reserved12_func_ptr_anon_25, _webkit_reserved13: _webkit_reserved13_func_ptr_anon_26, _webkit_reserved14: _webkit_reserved14_func_ptr_anon_27, _webkit_reserved15: _webkit_reserved15_func_ptr_anon_28}
		InputMethodContextPrivate :: struct #packed {}
		InputMethodUnderline :: struct #packed {}
		InputPurpose :: enum u32 {FREE_FORM = 0, DIGITS = 1, NUMBER = 2, PHONE = 3, URL = 4, EMAIL = 5, PASSWORD = 6}
		InsecureContentEvent :: enum u32 {INSECURE_CONTENT_RUN = 0, INSECURE_CONTENT_DISPLAYED = 1}
		JavascriptError :: enum u32 {SCRIPT_FAILED = 699, INVALID_PARAMETER = 600, INVALID_RESULT = 601}
		LoadEvent :: enum u32 {LOAD_STARTED = 0, LOAD_REDIRECTED = 1, LOAD_COMMITTED = 2, LOAD_FINISHED = 3}
		MediaCaptureState :: enum u32 {NONE = 0, ACTIVE = 1, MUTED = 2}
		MediaError :: enum u32 {WILL_HANDLE_LOAD = 204}
		MediaKeySystemPermissionRequest :: struct #packed {}
		MediaKeySystemPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		MemoryPressureSettings :: struct #packed {}
		NavigationAction :: struct #packed {}
		NavigationPolicyDecision :: struct #packed {}
		NavigationPolicyDecisionClass :: struct {parent_class: PolicyDecisionClass}
		NavigationType :: enum u32 {LINK_CLICKED = 0, FORM_SUBMITTED = 1, BACK_FORWARD = 2, RELOAD = 3, FORM_RESUBMITTED = 4, OTHER = 5}
		NetworkError :: enum u32 {FAILED = 399, TRANSPORT = 300, UNKNOWN_PROTOCOL = 301, CANCELLED = 302, FILE_DOES_NOT_EXIST = 303}
		NetworkProxyMode :: enum u32 {DEFAULT = 0, NO_PROXY = 1, CUSTOM = 2}
		NetworkProxySettings :: struct #packed {}
		NetworkSession :: struct #packed {}
		NetworkSessionClass :: struct {parent_class: gobj.ObjectClass}
		Notification :: struct #packed {}
		NotificationClass :: struct {parent_class: gobj.ObjectClass}
		NotificationPermissionRequest :: struct #packed {}
		NotificationPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		OptionMenu :: struct #packed {}
		OptionMenuClass :: struct {parent_class: gobj.ObjectClass}
		OptionMenuItem :: struct #packed {}
		PermissionRequest :: struct #packed {}
		PermissionRequestInterface :: struct {parent_interface: gobj.TypeInterface, allow: allow_func_ptr_anon_37, deny: deny_func_ptr_anon_38}
		PermissionState :: enum u32 {GRANTED = 0, DENIED = 1, PROMPT = 2}
		PermissionStateQuery :: struct #packed {}
		PointerLockPermissionRequest :: struct #packed {}
		PointerLockPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		PolicyDecision :: struct {parent_instance: gobj.Object, priv: ^PolicyDecisionPrivate}
		PolicyDecisionClass :: struct {parent_class: gobj.ObjectClass, _webkit_reserved0: _webkit_reserved0_func_ptr_anon_29, _webkit_reserved1: _webkit_reserved1_func_ptr_anon_30, _webkit_reserved2: _webkit_reserved2_func_ptr_anon_31, _webkit_reserved3: _webkit_reserved3_func_ptr_anon_32, _webkit_reserved4: _webkit_reserved4_func_ptr_anon_33, _webkit_reserved5: _webkit_reserved5_func_ptr_anon_34, _webkit_reserved6: _webkit_reserved6_func_ptr_anon_35, _webkit_reserved7: _webkit_reserved7_func_ptr_anon_36}
		PolicyDecisionPrivate :: struct #packed {}
		PolicyDecisionType :: enum u32 {NAVIGATION_ACTION = 0, NEW_WINDOW_ACTION = 1, RESPONSE = 2}
		PolicyError :: enum u32 {FAILED = 199, CANNOT_SHOW_MIME_TYPE = 100, CANNOT_SHOW_URI = 101, FRAME_LOAD_INTERRUPTED_BY_POLICY_CHANGE = 102, CANNOT_USE_RESTRICTED_PORT = 103}
		PrintError :: enum u32 {GENERAL = 599, PRINTER_NOT_FOUND = 500, INVALID_PAGE_RANGE = 501}
		PrintOperation :: struct #packed {}
		PrintOperationClass :: struct {parent_class: gobj.ObjectClass}
		PrintOperationResponse :: enum u32 {PRINT = 0, CANCEL = 1}
		ResponsePolicyDecision :: struct #packed {}
		ResponsePolicyDecisionClass :: struct {parent_class: PolicyDecisionClass}
		SaveMode :: enum u32 {MHTML = 0}
		ScriptDialog :: struct #packed {}
		ScriptDialogType :: enum u32 {SCRIPT_DIALOG_ALERT = 0, SCRIPT_DIALOG_CONFIRM = 1, SCRIPT_DIALOG_PROMPT = 2, SCRIPT_DIALOG_BEFORE_UNLOAD_CONFIRM = 3}
		ScriptMessageReply :: struct #packed {}
		SecurityManager :: struct #packed {}
		SecurityManagerClass :: struct {parent_class: gobj.ObjectClass}
		SecurityOrigin :: struct #packed {}
		Settings :: struct #packed {}
		SettingsClass :: struct {parent_class: gobj.ObjectClass}
		SnapshotError :: enum u32 {FAILED_TO_CREATE = 799}
		SnapshotOptions :: bit_set[SnapshotOptionsBit]
		SnapshotOptionsBit :: enum u32 {INCLUDE_SELECTION_HIGHLIGHTING = 0, TRANSPARENT_BACKGROUND = 1}
		SnapshotRegion :: enum u32 {VISIBLE = 0, FULL_DOCUMENT = 1}
		TLSErrorsPolicy :: enum u32 {IGNORE = 0, FAIL = 1}
		URIRequest :: struct #packed {}
		URIRequestClass :: struct {parent_class: gobj.ObjectClass}
		URIResponse :: struct #packed {}
		URIResponseClass :: struct {parent_class: gobj.ObjectClass}
		URISchemeRequest :: struct #packed {}
		URISchemeRequestCallback :: #type proc(request: ^URISchemeRequest, user_data: glib.pointer)
		URISchemeRequestClass :: struct {parent_class: gobj.ObjectClass}
		URISchemeResponse :: struct #packed {}
		URISchemeResponseClass :: struct {parent_class: gobj.ObjectClass}
		UserContentFilter :: struct #packed {}
		UserContentFilterError :: enum u32 {INVALID_SOURCE = 0, NOT_FOUND = 1}
		UserContentFilterStore :: struct #packed {}
		UserContentFilterStoreClass :: struct {parent_class: gobj.ObjectClass}
		UserContentInjectedFrames :: enum u32 {USER_CONTENT_INJECT_ALL_FRAMES = 0, USER_CONTENT_INJECT_TOP_FRAME = 1}
		UserContentManager :: struct #packed {}
		UserContentManagerClass :: struct {parent_class: gobj.ObjectClass}
		UserMediaPermissionRequest :: struct #packed {}
		UserMediaPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		UserMessage :: struct #packed {}
		UserMessageClass :: struct {parent_class: gobj.InitiallyUnownedClass}
		UserMessageError :: enum u32 {USER_MESSAGE_UNHANDLED_MESSAGE = 0}
		UserScript :: struct #packed {}
		UserScriptInjectionTime :: enum u32 {USER_SCRIPT_INJECT_AT_DOCUMENT_START = 0, USER_SCRIPT_INJECT_AT_DOCUMENT_END = 1}
		UserStyleLevel :: enum u32 {USER = 0, AUTHOR = 1}
		UserStyleSheet :: struct #packed {}
		WebContext :: struct #packed {}
		WebContextClass :: struct {parent_class: gobj.ObjectClass}
		WebExtension :: struct #packed {}
		WebExtensionClass :: struct {parent_class: gobj.ObjectClass}
		WebExtensionError :: enum u32 {UNKNOWN = 899, RESOURCE_NOT_FOUND = 800, INVALID_RESOURCE_CODE_SIGNATURE = 801, INVALID_MANIFEST = 802, UNSUPPORTED_MANIFEST_VERSION = 803, INVALID_MANIFEST_ENTRY = 804, INVALID_DECLARATIVE_NET_REQUEST_ENTRY = 805, INVALID_BACKGROUND_PERSISTENCE = 806, INVALID_ARCHIVE = 807}
		WebExtensionMatchPattern :: struct #packed {}
		WebExtensionMatchPatternError :: enum u32 {UNKNOWN = 899, INVALID_SCHEME = 808, INVALID_HOST = 809, INVALID_PATH = 810}
		WebExtensionMatchPatternOptions :: bit_set[WebExtensionMatchPatternOptionsBit]
		WebExtensionMatchPatternOptionsBit :: enum u32 {NONE = 0, IGNORE_SCHEMES = 1, IGNORE_PATHS = 2, MATCH_BIDIRECTIONALLY = 3}
		WebExtensionMode :: enum u32 {NONE = 0, MANIFESTV2 = 1, MANIFESTV3 = 2}
		WebInspector :: struct #packed {}
		WebInspectorClass :: struct {parent_class: gobj.ObjectClass}
		WebProcessTerminationReason :: enum u32 {WEB_PROCESS_CRASHED = 0, WEB_PROCESS_EXCEEDED_MEMORY_LIMIT = 1, WEB_PROCESS_TERMINATED_BY_API = 2}
		WebResource :: struct #packed {}
		WebResourceClass :: struct {parent_class: gobj.ObjectClass}
		WebView :: struct {parent_instance: WebViewBase, priv: ^WebViewPrivate}
		WebViewBase :: struct {parent_instance: gtk.Widget, priv: ^WebViewBasePrivate}
		WebViewBaseClass :: struct {parentClass: gtk.WidgetClass, _webkit_reserved0: _webkit_reserved0_func_ptr_anon_39, _webkit_reserved1: _webkit_reserved1_func_ptr_anon_40, _webkit_reserved2: _webkit_reserved2_func_ptr_anon_41, _webkit_reserved3: _webkit_reserved3_func_ptr_anon_42}
		WebViewBasePrivate :: struct #packed {}
		WebViewClass :: struct {parent: WebViewBaseClass, load_changed: load_changed_func_ptr_anon_43, load_failed: load_failed_func_ptr_anon_44, create: create_func_ptr_anon_45, ready_to_show: ready_to_show_func_ptr_anon_46, run_as_modal: run_as_modal_func_ptr_anon_47, close: close_func_ptr_anon_48, script_dialog: script_dialog_func_ptr_anon_49, decide_policy: decide_policy_func_ptr_anon_50, permission_request: permission_request_func_ptr_anon_51, mouse_target_changed: mouse_target_changed_func_ptr_anon_52, print: print_func_ptr_anon_53, resource_load_started: resource_load_started_func_ptr_anon_54, enter_fullscreen: enter_fullscreen_func_ptr_anon_55, leave_fullscreen: leave_fullscreen_func_ptr_anon_56, run_file_chooser: run_file_chooser_func_ptr_anon_57, context_menu: context_menu_func_ptr_anon_58, context_menu_dismissed: context_menu_dismissed_func_ptr_anon_59, submit_form: submit_form_func_ptr_anon_60, insecure_content_detected: insecure_content_detected_func_ptr_anon_61, web_process_crashed: web_process_crashed_func_ptr_anon_62, authenticate: authenticate_func_ptr_anon_63, load_failed_with_tls_errors: load_failed_with_tls_errors_func_ptr_anon_64, show_notification: show_notification_func_ptr_anon_65, run_color_chooser: run_color_chooser_func_ptr_anon_66, show_option_menu: show_option_menu_func_ptr_anon_67, web_process_terminated: web_process_terminated_func_ptr_anon_68, user_message_received: user_message_received_func_ptr_anon_69, query_permission_state: query_permission_state_func_ptr_anon_70, _webkit_reserved0: _webkit_reserved0_func_ptr_anon_71, _webkit_reserved1: _webkit_reserved1_func_ptr_anon_72, _webkit_reserved2: _webkit_reserved2_func_ptr_anon_73, _webkit_reserved3: _webkit_reserved3_func_ptr_anon_74, _webkit_reserved4: _webkit_reserved4_func_ptr_anon_75, _webkit_reserved5: _webkit_reserved5_func_ptr_anon_76, _webkit_reserved6: _webkit_reserved6_func_ptr_anon_77, _webkit_reserved7: _webkit_reserved7_func_ptr_anon_78, _webkit_reserved8: _webkit_reserved8_func_ptr_anon_79, _webkit_reserved9: _webkit_reserved9_func_ptr_anon_80, _webkit_reserved10: _webkit_reserved10_func_ptr_anon_81, _webkit_reserved11: _webkit_reserved11_func_ptr_anon_82, _webkit_reserved12: _webkit_reserved12_func_ptr_anon_83, _webkit_reserved13: _webkit_reserved13_func_ptr_anon_84, _webkit_reserved14: _webkit_reserved14_func_ptr_anon_85, _webkit_reserved15: _webkit_reserved15_func_ptr_anon_86, _webkit_reserved16: _webkit_reserved16_func_ptr_anon_87, _webkit_reserved17: _webkit_reserved17_func_ptr_anon_88, _webkit_reserved18: _webkit_reserved18_func_ptr_anon_89, _webkit_reserved19: _webkit_reserved19_func_ptr_anon_90, _webkit_reserved20: _webkit_reserved20_func_ptr_anon_91, _webkit_reserved21: _webkit_reserved21_func_ptr_anon_92, _webkit_reserved22: _webkit_reserved22_func_ptr_anon_93, _webkit_reserved23: _webkit_reserved23_func_ptr_anon_94, _webkit_reserved24: _webkit_reserved24_func_ptr_anon_95, _webkit_reserved25: _webkit_reserved25_func_ptr_anon_96, _webkit_reserved26: _webkit_reserved26_func_ptr_anon_97, _webkit_reserved27: _webkit_reserved27_func_ptr_anon_98, _webkit_reserved28: _webkit_reserved28_func_ptr_anon_99, _webkit_reserved29: _webkit_reserved29_func_ptr_anon_100, _webkit_reserved30: _webkit_reserved30_func_ptr_anon_101}
		WebViewPrivate :: struct #packed {}
		WebViewSessionState :: struct #packed {}
		WebsiteData :: struct #packed {}
		WebsiteDataAccessPermissionRequest :: struct #packed {}
		WebsiteDataAccessPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		WebsiteDataManager :: struct #packed {}
		WebsiteDataManagerClass :: struct {parent_class: gobj.ObjectClass}
		WebsiteDataTypes :: bit_set[WebsiteDataTypesBit]
		WebsiteDataTypesBit :: enum u32 {WEBSITE_DATA_MEMORY_CACHE = 0, WEBSITE_DATA_DISK_CACHE = 1, WEBSITE_DATA_OFFLINE_APPLICATION_CACHE = 2, WEBSITE_DATA_SESSION_STORAGE = 3, WEBSITE_DATA_LOCAL_STORAGE = 4, WEBSITE_DATA_INDEXEDDB_DATABASES = 5, WEBSITE_DATA_COOKIES = 6, WEBSITE_DATA_DEVICE_ID_HASH_SALT = 7, WEBSITE_DATA_HSTS_CACHE = 8, WEBSITE_DATA_ITP = 9, WEBSITE_DATA_SERVICE_WORKER_REGISTRATIONS = 10, WEBSITE_DATA_DOM_CACHE = 11}
		WebsitePolicies :: struct #packed {}
		WebsitePoliciesClass :: struct {parent_class: gobj.ObjectClass}
		WindowProperties :: struct #packed {}
		WindowPropertiesClass :: struct {parent_class: gobj.ObjectClass}
		XRPermissionRequest :: struct #packed {}
		XRPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		XRSessionFeatures :: bit_set[XRSessionFeaturesBit]
		XRSessionFeaturesBit :: enum u32 {VIEWER = 0, LOCAL = 1, LOCAL_FLOOR = 2, BOUNDED_FLOOR = 3, UNBOUNDED = 4, HAND_TRACKING = 5, HIT_TEST = 6, LAYERS = 7}
		XRSessionMode :: enum u32 {INLINE = 0, IMMERSIVE_VR = 1, IMMERSIVE_AR = 2}
		_webkit_reserved0_func_ptr_anon_13 :: #type proc()
		_webkit_reserved0_func_ptr_anon_29 :: #type proc()
		_webkit_reserved0_func_ptr_anon_39 :: #type proc()
		_webkit_reserved0_func_ptr_anon_71 :: #type proc()
		_webkit_reserved10_func_ptr_anon_23 :: #type proc()
		_webkit_reserved10_func_ptr_anon_81 :: #type proc()
		_webkit_reserved11_func_ptr_anon_24 :: #type proc()
		_webkit_reserved11_func_ptr_anon_82 :: #type proc()
		_webkit_reserved12_func_ptr_anon_25 :: #type proc()
		_webkit_reserved12_func_ptr_anon_83 :: #type proc()
		_webkit_reserved13_func_ptr_anon_26 :: #type proc()
		_webkit_reserved13_func_ptr_anon_84 :: #type proc()
		_webkit_reserved14_func_ptr_anon_27 :: #type proc()
		_webkit_reserved14_func_ptr_anon_85 :: #type proc()
		_webkit_reserved15_func_ptr_anon_28 :: #type proc()
		_webkit_reserved15_func_ptr_anon_86 :: #type proc()
		_webkit_reserved16_func_ptr_anon_87 :: #type proc()
		_webkit_reserved17_func_ptr_anon_88 :: #type proc()
		_webkit_reserved18_func_ptr_anon_89 :: #type proc()
		_webkit_reserved19_func_ptr_anon_90 :: #type proc()
		_webkit_reserved1_func_ptr_anon_14 :: #type proc()
		_webkit_reserved1_func_ptr_anon_30 :: #type proc()
		_webkit_reserved1_func_ptr_anon_40 :: #type proc()
		_webkit_reserved1_func_ptr_anon_72 :: #type proc()
		_webkit_reserved20_func_ptr_anon_91 :: #type proc()
		_webkit_reserved21_func_ptr_anon_92 :: #type proc()
		_webkit_reserved22_func_ptr_anon_93 :: #type proc()
		_webkit_reserved23_func_ptr_anon_94 :: #type proc()
		_webkit_reserved24_func_ptr_anon_95 :: #type proc()
		_webkit_reserved25_func_ptr_anon_96 :: #type proc()
		_webkit_reserved26_func_ptr_anon_97 :: #type proc()
		_webkit_reserved27_func_ptr_anon_98 :: #type proc()
		_webkit_reserved28_func_ptr_anon_99 :: #type proc()
		_webkit_reserved29_func_ptr_anon_100 :: #type proc()
		_webkit_reserved2_func_ptr_anon_15 :: #type proc()
		_webkit_reserved2_func_ptr_anon_31 :: #type proc()
		_webkit_reserved2_func_ptr_anon_41 :: #type proc()
		_webkit_reserved2_func_ptr_anon_73 :: #type proc()
		_webkit_reserved30_func_ptr_anon_101 :: #type proc()
		_webkit_reserved3_func_ptr_anon_16 :: #type proc()
		_webkit_reserved3_func_ptr_anon_32 :: #type proc()
		_webkit_reserved3_func_ptr_anon_42 :: #type proc()
		_webkit_reserved3_func_ptr_anon_74 :: #type proc()
		_webkit_reserved4_func_ptr_anon_17 :: #type proc()
		_webkit_reserved4_func_ptr_anon_33 :: #type proc()
		_webkit_reserved4_func_ptr_anon_75 :: #type proc()
		_webkit_reserved5_func_ptr_anon_18 :: #type proc()
		_webkit_reserved5_func_ptr_anon_34 :: #type proc()
		_webkit_reserved5_func_ptr_anon_76 :: #type proc()
		_webkit_reserved6_func_ptr_anon_19 :: #type proc()
		_webkit_reserved6_func_ptr_anon_35 :: #type proc()
		_webkit_reserved6_func_ptr_anon_77 :: #type proc()
		_webkit_reserved7_func_ptr_anon_20 :: #type proc()
		_webkit_reserved7_func_ptr_anon_36 :: #type proc()
		_webkit_reserved7_func_ptr_anon_78 :: #type proc()
		_webkit_reserved8_func_ptr_anon_21 :: #type proc()
		_webkit_reserved8_func_ptr_anon_79 :: #type proc()
		_webkit_reserved9_func_ptr_anon_22 :: #type proc()
		_webkit_reserved9_func_ptr_anon_80 :: #type proc()
		allow_func_ptr_anon_37 :: #type proc(request: ^PermissionRequest)
		authenticate_func_ptr_anon_63 :: #type proc(web_view: ^WebView, request: ^AuthenticationRequest) -> glib.boolean
		close_func_ptr_anon_48 :: #type proc(web_view: ^WebView)
		committed_func_ptr_anon_3 :: #type proc(context_p: ^InputMethodContext, text: cstring)
		context_menu_dismissed_func_ptr_anon_59 :: #type proc(web_view: ^WebView)
		context_menu_func_ptr_anon_58 :: #type proc(web_view: ^WebView, context_menu: ^ContextMenu, hit_test_result: ^HitTestResult) -> glib.boolean
		create_func_ptr_anon_45 :: #type proc(web_view: ^WebView, navigation_action: ^NavigationAction) -> ^gtk.Widget
		decide_policy_func_ptr_anon_50 :: #type proc(web_view: ^WebView, decision: ^PolicyDecision, type: PolicyDecisionType) -> glib.boolean
		delete_surrounding_func_ptr_anon_4 :: #type proc(context_p: ^InputMethodContext, offset: i32, n_chars: glib.uint_)
		deny_func_ptr_anon_38 :: #type proc(request: ^PermissionRequest)
		enter_fullscreen_func_ptr_anon_55 :: #type proc(web_view: ^WebView) -> glib.boolean
		eolocationManager :: GeolocationManager
		eolocationManagerClass :: struct {parent_class: gobj.ObjectClass}
		eolocationPermissionRequest :: GeolocationPermissionRequest
		eolocationPermissionRequestClass :: struct {parent_class: gobj.ObjectClass}
		eolocationPosition :: GeolocationPosition
		et_preedit_func_ptr_anon_6 :: #type proc(context_p: ^InputMethodContext, text: ^cstring, underlines: ^^glib.List, cursor_offset: ^glib.uint_)
		filter_key_event_func_ptr_anon_7 :: #type proc(context_p: ^InputMethodContext, key_event: ^gtk.Event) -> glib.boolean
		insecure_content_detected_func_ptr_anon_61 :: #type proc(web_view: ^WebView, event: InsecureContentEvent)
		leave_fullscreen_func_ptr_anon_56 :: #type proc(web_view: ^WebView) -> glib.boolean
		load_changed_func_ptr_anon_43 :: #type proc(web_view: ^WebView, load_event: LoadEvent)
		load_failed_func_ptr_anon_44 :: #type proc(web_view: ^WebView, load_event: LoadEvent, failing_uri: cstring, error: ^glib.Error) -> glib.boolean
		load_failed_with_tls_errors_func_ptr_anon_64 :: #type proc(web_view: ^WebView, failing_uri: cstring, certificate: ^gio.TlsCertificate, errors: gio.TlsCertificateFlags) -> glib.boolean
		mouse_target_changed_func_ptr_anon_52 :: #type proc(web_view: ^WebView, hit_test_result: ^HitTestResult, modifiers: glib.uint_)
		notify_cursor_area_func_ptr_anon_10 :: #type proc(context_p: ^InputMethodContext, x: i32, y: i32, width: i32, height: i32)
		notify_focus_in_func_ptr_anon_8 :: #type proc(context_p: ^InputMethodContext)
		notify_focus_out_func_ptr_anon_9 :: #type proc(context_p: ^InputMethodContext)
		notify_surrounding_func_ptr_anon_11 :: #type proc(context_p: ^InputMethodContext, text: cstring, length: glib.uint_, cursor_index: glib.uint_, selection_index: glib.uint_)
		permission_request_func_ptr_anon_51 :: #type proc(web_view: ^WebView, permission_request: ^PermissionRequest) -> glib.boolean
		preedit_changed_func_ptr_anon_1 :: #type proc(context_p: ^InputMethodContext)
		preedit_finished_func_ptr_anon_2 :: #type proc(context_p: ^InputMethodContext)
		preedit_started_func_ptr_anon_0 :: #type proc(context_p: ^InputMethodContext)
		print_func_ptr_anon_53 :: #type proc(web_view: ^WebView, print_operation: ^PrintOperation) -> glib.boolean
		query_permission_state_func_ptr_anon_70 :: #type proc(web_view: ^WebView, query: ^PermissionStateQuery) -> glib.boolean
		ready_to_show_func_ptr_anon_46 :: #type proc(web_view: ^WebView)
		reset_func_ptr_anon_12 :: #type proc(context_p: ^InputMethodContext)
		resource_load_started_func_ptr_anon_54 :: #type proc(web_view: ^WebView, resource: ^WebResource, request: ^URIRequest)
		run_as_modal_func_ptr_anon_47 :: #type proc(web_view: ^WebView)
		run_color_chooser_func_ptr_anon_66 :: #type proc(web_view: ^WebView, request: ^ColorChooserRequest) -> glib.boolean
		run_file_chooser_func_ptr_anon_57 :: #type proc(web_view: ^WebView, request: ^FileChooserRequest) -> glib.boolean
		script_dialog_func_ptr_anon_49 :: #type proc(web_view: ^WebView, dialog: ^ScriptDialog) -> glib.boolean
		set_enable_preedit_func_ptr_anon_5 :: #type proc(context_p: ^InputMethodContext, enabled: glib.boolean)
		show_notification_func_ptr_anon_65 :: #type proc(web_view: ^WebView, notification: ^Notification) -> glib.boolean
		show_option_menu_func_ptr_anon_67 :: #type proc(web_view: ^WebView, menu: ^OptionMenu, rectangle: ^gtk.Rectangle) -> glib.boolean
		submit_form_func_ptr_anon_60 :: #type proc(web_view: ^WebView, request: ^FormSubmissionRequest)
		user_message_received_func_ptr_anon_69 :: #type proc(web_view: ^WebView, message: ^UserMessage) -> glib.boolean
		web_process_crashed_func_ptr_anon_62 :: #type proc(web_view: ^WebView) -> glib.boolean
		web_process_terminated_func_ptr_anon_68 :: #type proc(web_view: ^WebView, reason: WebProcessTerminationReason)

	files:
		patched.odin
		webkit.odin
```

## webkit:javascriptcore

```text
package javascriptcore
	constants
		MAJOR_VERSION :: 2
		MICRO_VERSION :: 6
		MINOR_VERSION :: 52
		OPTIONS_USE_DFG :: "useDFGJIT"
		OPTIONS_USE_FTL :: "useFTLJIT"
		OPTIONS_USE_JIT :: "useJIT"
		OPTIONS_USE_LLINT :: "useLLInt"

	procedures
		class_add_constructor :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> ^Value ---
		class_add_constructor_variadic :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) -> ^Value ---
		class_add_constructorv :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) -> ^Value ---
		class_add_method :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) ---
		class_add_method_variadic :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) ---
		class_add_methodv :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) ---
		class_add_property :: proc(jsc_class: ^Class, name: cstring, property_type: gobj.Type, getter: gobj.Callback, setter: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---
		class_get_name :: proc(jsc_class: ^Class) -> cstring ---
		class_get_parent :: proc(jsc_class: ^Class) -> ^Class ---
		class_get_type :: proc() -> gobj.Type ---
		context_check_syntax :: proc(context_p: ^Context, code: cstring, length: glib.ssize, mode: CheckSyntaxMode, uri: cstring, line_number: u32, exception: ^^Exception) -> CheckSyntaxResult ---
		context_clear_exception :: proc(context_p: ^Context) ---
		context_evaluate :: proc(context_p: ^Context, code: cstring, length: glib.ssize) -> ^Value ---
		context_evaluate_in_object :: proc(context_p: ^Context, code: cstring, length: glib.ssize, object_instance: glib.pointer, object_class: ^Class, uri: cstring, line_number: glib.uint_, object: ^^Value) -> ^Value ---
		context_evaluate_with_source_uri :: proc(context_p: ^Context, code: cstring, length: glib.ssize, uri: cstring, line_number: glib.uint_) -> ^Value ---
		context_get_current :: proc() -> ^Context ---
		context_get_exception :: proc(context_p: ^Context) -> ^Exception ---
		context_get_global_object :: proc(context_p: ^Context) -> ^Value ---
		context_get_type :: proc() -> gobj.Type ---
		context_get_value :: proc(context_p: ^Context, name: cstring) -> ^Value ---
		context_get_virtual_machine :: proc(context_p: ^Context) -> ^VirtualMachine ---
		context_new :: proc() -> ^Context ---
		context_new_with_virtual_machine :: proc(vm: ^VirtualMachine) -> ^Context ---
		context_pop_exception_handler :: proc(context_p: ^Context) ---
		context_push_exception_handler :: proc(context_p: ^Context, handler: ExceptionHandler, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---
		context_register_class :: proc(context_p: ^Context, name: cstring, parent_class: ^Class, vtable: ^ClassVTable, destroy_notify: glib.DestroyNotify) -> ^Class ---
		context_set_value :: proc(context_p: ^Context, name: cstring, value: ^Value) ---
		context_throw :: proc(context_p: ^Context, error_message: cstring) ---
		context_throw_exception :: proc(context_p: ^Context, exception: ^Exception) ---
		context_throw_printf :: proc(context_p: ^Context, format: cstring, #c_vararg var_args: ..any) ---
		context_throw_with_name :: proc(context_p: ^Context, error_name: cstring, error_message: cstring) ---
		context_throw_with_name_printf :: proc(context_p: ^Context, error_name: cstring, format: cstring, #c_vararg var_args: ..any) ---
		exception_get_backtrace_string :: proc(exception: ^Exception) -> cstring ---
		exception_get_column_number :: proc(exception: ^Exception) -> glib.uint_ ---
		exception_get_line_number :: proc(exception: ^Exception) -> glib.uint_ ---
		exception_get_message :: proc(exception: ^Exception) -> cstring ---
		exception_get_name :: proc(exception: ^Exception) -> cstring ---
		exception_get_source_uri :: proc(exception: ^Exception) -> cstring ---
		exception_get_type :: proc() -> gobj.Type ---
		exception_new :: proc(context_p: ^Context, message: cstring) -> ^Exception ---
		exception_new_printf :: proc(context_p: ^Context, format: cstring, #c_vararg var_args: ..any) -> ^Exception ---
		exception_new_with_name :: proc(context_p: ^Context, name: cstring, message: cstring) -> ^Exception ---
		exception_new_with_name_printf :: proc(context_p: ^Context, name: cstring, format: cstring, #c_vararg var_args: ..any) -> ^Exception ---
		exception_report :: proc(exception: ^Exception) -> cstring ---
		exception_to_string :: proc(exception: ^Exception) -> cstring ---
		get_major_version :: proc() -> glib.uint_ ---
		get_micro_version :: proc() -> glib.uint_ ---
		get_minor_version :: proc() -> glib.uint_ ---
		options_foreach :: proc(function: OptionsFunc, user_data: glib.pointer) ---
		options_get_boolean :: proc(option: cstring, value: ^glib.boolean) -> glib.boolean ---
		options_get_double :: proc(option: cstring, value: ^glib.double) -> glib.boolean ---
		options_get_int :: proc(option: cstring, value: ^glib.int_) -> glib.boolean ---
		options_get_option_group :: proc() -> ^glib.OptionGroup ---
		options_get_range_string :: proc(option: cstring, value: ^cstring) -> glib.boolean ---
		options_get_size :: proc(option: cstring, value: ^glib.size) -> glib.boolean ---
		options_get_string :: proc(option: cstring, value: ^cstring) -> glib.boolean ---
		options_get_uint :: proc(option: cstring, value: ^glib.uint_) -> glib.boolean ---
		options_set_boolean :: proc(option: cstring, value: glib.boolean) -> glib.boolean ---
		options_set_double :: proc(option: cstring, value: glib.double) -> glib.boolean ---
		options_set_int :: proc(option: cstring, value: glib.int_) -> glib.boolean ---
		options_set_range_string :: proc(option: cstring, value: cstring) -> glib.boolean ---
		options_set_size :: proc(option: cstring, value: glib.size) -> glib.boolean ---
		options_set_string :: proc(option: cstring, value: cstring) -> glib.boolean ---
		options_set_uint :: proc(option: cstring, value: glib.uint_) -> glib.boolean ---
		value_array_buffer_get_data :: proc(value: ^Value, size_p: ^glib.size) -> glib.pointer ---
		value_array_buffer_get_size :: proc(value: ^Value) -> glib.size ---
		value_constructor_call :: proc(value: ^Value, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---
		value_constructor_callv :: proc(value: ^Value, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---
		value_function_call :: proc(value: ^Value, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---
		value_function_callv :: proc(value: ^Value, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---
		value_get_context :: proc(value: ^Value) -> ^Context ---
		value_get_type :: proc() -> gobj.Type ---
		value_is_array :: proc(value: ^Value) -> glib.boolean ---
		value_is_array_buffer :: proc(value: ^Value) -> glib.boolean ---
		value_is_boolean :: proc(value: ^Value) -> glib.boolean ---
		value_is_constructor :: proc(value: ^Value) -> glib.boolean ---
		value_is_function :: proc(value: ^Value) -> glib.boolean ---
		value_is_null :: proc(value: ^Value) -> glib.boolean ---
		value_is_number :: proc(value: ^Value) -> glib.boolean ---
		value_is_object :: proc(value: ^Value) -> glib.boolean ---
		value_is_string :: proc(value: ^Value) -> glib.boolean ---
		value_is_typed_array :: proc(value: ^Value) -> glib.boolean ---
		value_is_undefined :: proc(value: ^Value) -> glib.boolean ---
		value_new_array :: proc(context_p: ^Context, first_item_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---
		value_new_array_buffer :: proc(context_p: ^Context, data: glib.pointer, size_p: glib.size, destroy_notify: glib.DestroyNotify, user_data: glib.pointer) -> ^Value ---
		value_new_array_from_garray :: proc(context_p: ^Context, array: ^glib.PtrArray) -> ^Value ---
		value_new_array_from_strv :: proc(context_p: ^Context, strv: ^cstring) -> ^Value ---
		value_new_boolean :: proc(context_p: ^Context, value: glib.boolean) -> ^Value ---
		value_new_from_json :: proc(context_p: ^Context, json: cstring) -> ^Value ---
		value_new_function :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> ^Value ---
		value_new_function_variadic :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) -> ^Value ---
		value_new_functionv :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) -> ^Value ---
		value_new_null :: proc(context_p: ^Context) -> ^Value ---
		value_new_number :: proc(context_p: ^Context, number: f64) -> ^Value ---
		value_new_object :: proc(context_p: ^Context, instance: glib.pointer, jsc_class: ^Class) -> ^Value ---
		value_new_promise :: proc(context_p: ^Context, executor: Executor, user_data: glib.pointer) -> ^Value ---
		value_new_string :: proc(context_p: ^Context, string_p: cstring) -> ^Value ---
		value_new_string_from_bytes :: proc(context_p: ^Context, bytes: ^glib.Bytes) -> ^Value ---
		value_new_typed_array :: proc(context_p: ^Context, type: TypedArrayType, length: glib.size) -> ^Value ---
		value_new_typed_array_with_buffer :: proc(array_buffer: ^Value, type: TypedArrayType, offset: glib.size, length: glib.ssize) -> ^Value ---
		value_new_undefined :: proc(context_p: ^Context) -> ^Value ---
		value_object_define_property_accessor :: proc(value: ^Value, property_name: cstring, flags: ValuePropertyFlags, property_type: gobj.Type, getter: gobj.Callback, setter: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---
		value_object_define_property_data :: proc(value: ^Value, property_name: cstring, flags: ValuePropertyFlags, property_value: ^Value) ---
		value_object_delete_property :: proc(value: ^Value, name: cstring) -> glib.boolean ---
		value_object_enumerate_properties :: proc(value: ^Value) -> ^cstring ---
		value_object_get_property :: proc(value: ^Value, name: cstring) -> ^Value ---
		value_object_get_property_at_index :: proc(value: ^Value, index: glib.uint_) -> ^Value ---
		value_object_has_property :: proc(value: ^Value, name: cstring) -> glib.boolean ---
		value_object_invoke_method :: proc(value: ^Value, name: cstring, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---
		value_object_invoke_methodv :: proc(value: ^Value, name: cstring, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---
		value_object_is_instance_of :: proc(value: ^Value, name: cstring) -> glib.boolean ---
		value_object_set_property :: proc(value: ^Value, name: cstring, property: ^Value) ---
		value_object_set_property_at_index :: proc(value: ^Value, index: glib.uint_, property: ^Value) ---
		value_to_boolean :: proc(value: ^Value) -> glib.boolean ---
		value_to_double :: proc(value: ^Value) -> f64 ---
		value_to_int32 :: proc(value: ^Value) -> glib.int32 ---
		value_to_json :: proc(value: ^Value, indent: glib.uint_) -> cstring ---
		value_to_string :: proc(value: ^Value) -> cstring ---
		value_to_string_as_bytes :: proc(value: ^Value) -> ^glib.Bytes ---
		value_typed_array_get_buffer :: proc(value: ^Value) -> ^Value ---
		value_typed_array_get_data :: proc(value: ^Value, length: ^glib.size) -> glib.pointer ---
		value_typed_array_get_length :: proc(value: ^Value) -> glib.size ---
		value_typed_array_get_offset :: proc(value: ^Value) -> glib.size ---
		value_typed_array_get_size :: proc(value: ^Value) -> glib.size ---
		value_typed_array_get_type :: proc(value: ^Value) -> TypedArrayType ---
		virtual_machine_get_type :: proc() -> gobj.Type ---
		virtual_machine_new :: proc() -> ^VirtualMachine ---
		weak_value_get_type :: proc() -> gobj.Type ---
		weak_value_get_value :: proc(weak_value: ^WeakValue) -> ^Value ---
		weak_value_new :: proc(value: ^Value) -> ^WeakValue ---

	types
		CheckSyntaxMode :: enum u32 {SCRIPT = 0, MODULE = 1}
		CheckSyntaxResult :: enum u32 {SUCCESS = 0, RECOVERABLE_ERROR = 1, IRRECOVERABLE_ERROR = 2, UNTERMINATED_LITERAL_ERROR = 3, OUT_OF_MEMORY_ERROR = 4, STACK_OVERFLOW_ERROR = 5}
		Class :: struct #packed {}
		ClassClass :: struct {parent_class: gobj.ObjectClass}
		ClassDeletePropertyFunction :: #type proc(jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> glib.boolean
		ClassEnumeratePropertiesFunction :: #type proc(jsc_class: ^Class, context_p: ^Context, instance: glib.pointer) -> ^cstring
		ClassGetPropertyFunction :: #type proc(jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> ^Value
		ClassHasPropertyFunction :: #type proc(jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> glib.boolean
		ClassSetPropertyFunction :: #type proc(jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring, value: ^Value) -> glib.boolean
		ClassVTable :: struct {get_property: ClassGetPropertyFunction, set_property: ClassSetPropertyFunction, has_property: ClassHasPropertyFunction, delete_property: ClassDeletePropertyFunction, enumerate_properties: ClassEnumeratePropertiesFunction, _jsc_reserved0: _jsc_reserved0_func_ptr_anon_0, _jsc_reserved1: _jsc_reserved1_func_ptr_anon_1, _jsc_reserved2: _jsc_reserved2_func_ptr_anon_2, _jsc_reserved3: _jsc_reserved3_func_ptr_anon_3, _jsc_reserved4: _jsc_reserved4_func_ptr_anon_4, _jsc_reserved5: _jsc_reserved5_func_ptr_anon_5, _jsc_reserved6: _jsc_reserved6_func_ptr_anon_6, _jsc_reserved7: _jsc_reserved7_func_ptr_anon_7}
		Context :: struct #packed {}
		ContextClass :: struct {parent_class: gobj.ObjectClass}
		Exception :: struct #packed {}
		ExceptionClass :: struct {parent_class: gobj.ObjectClass}
		ExceptionHandler :: #type proc(context_p: ^Context, exception: ^Exception, user_data: glib.pointer)
		Executor :: #type proc(resolve: ^Value, reject: ^Value, user_data: glib.pointer)
		OptionType :: enum u32 {OPTION_BOOLEAN = 0, OPTION_INT = 1, OPTION_UINT = 2, OPTION_SIZE = 3, OPTION_DOUBLE = 4, OPTION_STRING = 5, OPTION_RANGE_STRING = 6}
		OptionsFunc :: #type proc(option: cstring, type: OptionType, description: cstring, user_data: glib.pointer) -> glib.boolean
		TypedArrayType :: enum u32 {TYPED_ARRAY_NONE = 0, TYPED_ARRAY_INT8 = 1, TYPED_ARRAY_INT16 = 2, TYPED_ARRAY_INT32 = 3, TYPED_ARRAY_INT64 = 4, TYPED_ARRAY_UINT8 = 5, TYPED_ARRAY_UINT8_CLAMPED = 6, TYPED_ARRAY_UINT16 = 7, TYPED_ARRAY_UINT32 = 8, TYPED_ARRAY_UINT64 = 9, TYPED_ARRAY_FLOAT32 = 10, TYPED_ARRAY_FLOAT64 = 11}
		Value :: struct #packed {}
		ValueClass :: struct {parent_class: gobj.ObjectClass}
		ValuePropertyFlags :: bit_set[ValuePropertyFlagsBit]
		ValuePropertyFlagsBit :: enum u32 {VALUE_PROPERTY_CONFIGURABLE = 0, VALUE_PROPERTY_ENUMERABLE = 1, VALUE_PROPERTY_WRITABLE = 2}
		VirtualMachine :: struct #packed {}
		VirtualMachineClass :: struct {parent_class: gobj.ObjectClass}
		WeakValue :: struct #packed {}
		WeakValueClass :: struct {parent_class: gobj.ObjectClass}
		_jsc_reserved0_func_ptr_anon_0 :: #type proc()
		_jsc_reserved1_func_ptr_anon_1 :: #type proc()
		_jsc_reserved2_func_ptr_anon_2 :: #type proc()
		_jsc_reserved3_func_ptr_anon_3 :: #type proc()
		_jsc_reserved4_func_ptr_anon_4 :: #type proc()
		_jsc_reserved5_func_ptr_anon_5 :: #type proc()
		_jsc_reserved6_func_ptr_anon_6 :: #type proc()
		_jsc_reserved7_func_ptr_anon_7 :: #type proc()

	files:
		javascriptcore.odin
		patched.odin
```
