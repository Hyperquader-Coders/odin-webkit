# odin-webkit cheat sheet

One screen per job: the calls a program makes, in the order it makes them, and the few rules
worth remembering. Every `webkit.` and `jsc.` name here is a public declaration in
[API.md](API.md), and `make lint` fails when one is not. WebKitGTK's own documentation is the
reference; this is the idiom layer over the generated names.

Conventions that hold everywhere: `import webkit "webkit:webkit"` (and `jsc
"webkit:javascriptcore"` for script values) beside `glib:glib`, `glib:gio`, `glib:gobject` and
`gtk4:gtk4` ([Use](../README.md#use)); a procedure is the C name without `webkit_`, a type the C
name without `WebKit`; a `boolean` is `glib.boolean`. There are no `FOO(w)` casts here: a view
is a `^webkit.WebView` and becomes a widget with `(^gtk.Widget)(view)`. A callback is a
`proc "c"`: its first line is `context = app_ctx`, the `runtime.Context` saved at startup.

## webkit:WebView — make a view, load a page, hear about it

```odin
import "glib:glib"
import "glib:gobject"
import gtk "gtk4:gtk4"
import webkit "webkit:webkit"

// construct-only properties (the session, website policies) go in at creation:
session := webkit.network_session_new_ephemeral()           // nothing is written to disk; see the session section
names := [1]cstring{"network-session"}
values: [1]gobject.Value
gobject.value_init(&values[0], gobject.object_get_type())
gobject.value_set_object(&values[0], session)
view := (^webkit.WebView)(gobject.object_new_with_properties(webkit.web_view_get_type(), 1, &names[0], &values[0]))
gobject.value_unset(&values[0])
gobject.object_ref_sink(view)                               // a reference of your own, dropped at teardown
// webkit.web_view_new() is the same view on the default session

gtk.widget_set_hexpand((^gtk.Widget)(view), true)
gtk.overlay_set_child(overlay, (^gtk.Widget)(view))
webkit.web_view_load_uri(view, "https://example.com/")      // or web_view_load_html(view, html, "about:blank")

gobject.signal_connect(view, "notify::title", on_title, nil)       // GObject property notifications
gobject.signal_connect(view, "load-changed", on_load_changed, nil)
gobject.signal_connect(view, "decide-policy", on_decide_policy, nil)
gobject.signal_connect(view, "web-process-terminated", on_process_ended, nil)

on_title :: proc "c" (view: ^webkit.WebView, pspec: ^gobject.ParamSpec, data: glib.pointer) {
	context = app_ctx
	title := webkit.web_view_get_title(view)                 // borrowed; nil before a page has one
	uri := webkit.web_view_get_uri(view)                     // borrowed; nil on an empty view
}

on_load_changed :: proc "c" (view: ^webkit.WebView, event: webkit.LoadEvent, data: glib.pointer) {
	context = app_ctx
	if event == .LOAD_FINISHED { _ = webkit.web_view_is_loading(view) }
}

on_decide_policy :: proc "c" (view: ^webkit.WebView, decision: ^webkit.PolicyDecision, type: webkit.PolicyDecisionType, data: glib.pointer) -> glib.boolean {
	context = app_ctx
	if type == .NEW_WINDOW_ACTION {
		action := webkit.navigation_policy_decision_get_navigation_action((^webkit.NavigationPolicyDecision)(decision))
		uri := webkit.uri_request_get_uri(webkit.navigation_action_get_request(action))
		webkit.policy_decision_ignore(decision)              // or policy_decision_use(decision); answer once
		return true                                          // handled; false leaves WebKit's default
	}
	return false
}

on_process_ended :: proc "c" (view: ^webkit.WebView, reason: webkit.WebProcessTerminationReason, data: glib.pointer) {
	context = app_ctx                                        // .WEB_PROCESS_CRASHED, .WEB_PROCESS_EXCEEDED_MEMORY_LIMIT, .WEB_PROCESS_TERMINATED_BY_API
	webkit.web_view_reload(view)                             // starts a new web process
}
```

| remember | |
|---|---|
| The web and network processes start with the first view and end when the program's connection to them closes | make the view when the user first asks for it; `webkit.web_view_terminate_web_process(view)` ends one on purpose |
| A crashed page leaves a blank view that needs `web-process-terminated` | show a note and a Reload; the view loads again with `web_view_reload` |
| `web_view_load_uri` loads from the UI process and skips WebKit's check that a page may not open a local file | allow only `http` and `https` in `decide-policy` and `create` yourself |
| `"create"` (a page asks for a window) returns a `^gtk.Widget` or nil | return nil and `web_view_load_uri` into the view you have to keep one window |
| Answer a policy decision once: `ignore`, `use` or `download` | then return `true` so WebKit does not decide again |
| Enum members keep their C prefix | `.WEB_PROCESS_CRASHED`, `.LOAD_FINISHED`, `.AUTOPLAY_DENY`; `.NEW_WINDOW_ACTION` and `.RESPONSE` are bare |

## webkit:Settings — what a page may do

```odin
import "glib:glib"
import webkit "webkit:webkit"

s := webkit.web_view_get_settings(view)                     // borrowed; the view's own
webkit.settings_set_enable_javascript(s, true)
webkit.settings_set_javascript_can_open_windows_automatically(s, false)
webkit.settings_set_enable_developer_extras(s, false)
webkit.settings_set_allow_file_access_from_file_urls(s, false)
webkit.settings_set_enable_media_stream(s, false)           // camera and microphone
webkit.settings_set_enable_webrtc(s, false)
webkit.settings_set_media_playback_requires_user_gesture(s, true)
webkit.settings_set_user_agent(s, "app/1.0")
ua := webkit.settings_get_user_agent(s)

features := webkit.settings_get_all_features()              // ^webkit.FeatureList: yours to unref
defer webkit.feature_list_unref(features)
for i in 0 ..< webkit.feature_list_get_length(features) {
	f := webkit.feature_list_get(features, i)               // borrowed
	if string(webkit.feature_get_identifier(f)) == "LazyImageLoading" {
		webkit.settings_set_feature_enabled(s, f, true)
	}
}

// construct-only: pass to object_new_with_properties as "website-policies"
policies := webkit.website_policies_new_with_policies("autoplay", webkit.AutoplayPolicy.AUTOPLAY_DENY, cstring(nil))
current := webkit.web_view_get_website_policies(view)
```

| remember | |
|---|---|
| Every setter takes a `glib.boolean` and the typed `true` converts | a `bool` expression needs `glib.boolean(x)` |
| A variadic constructor takes its values in their C types, ended by `cstring(nil)` | an enum is written with its type, as `webkit.AutoplayPolicy.AUTOPLAY_DENY` |
| `settings_get_all_features()` returns a list you unref | a feature is found by its identifier string, not by a constant |

## webkit:NetworkSession — cookies, downloads, what is kept

```odin
import "glib:gio"
import "glib:glib"
import "glib:gobject"
import webkit "webkit:webkit"

session := webkit.network_session_new_ephemeral()           // no cookies, cache or storage on disk
persistent := webkit.network_session_new("/data/dir", "/cache/dir")
defer gobject.object_unref(session)

gobject.signal_connect(session, "download-started", on_download, nil)

manager := webkit.network_session_get_cookie_manager(session)    // borrowed
webkit.cookie_manager_get_cookies(manager, "https://example.com/", cancel, on_cookies, nil)

on_download :: proc "c" (session: ^webkit.NetworkSession, download: ^webkit.Download, data: glib.pointer) {
	context = app_ctx
	webkit.download_cancel(download)                         // before a destination is chosen: nothing is written
	view := webkit.download_get_web_view(download)           // nil for a download not from a view
}

on_cookies :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: glib.pointer) {
	context = app_ctx
	err: ^glib.Error
	list := webkit.cookie_manager_get_cookies_finish((^webkit.CookieManager)(source), (^gio.AsyncResult)(res), &err)
	if err != nil { glib.error_free(err) }
	// list: a ^glib.List of soup cookies; free them and the list when done
}
```

| remember | |
|---|---|
| An ephemeral session keeps nothing, and a cookie set in it dies with the process | make one session per program and give it to every view |
| The session is a construct-only property of the view | create it first, then the view (`object_new_with_properties`) |
| A link with `download`, or a response WebKit cannot show, starts a download | cancel it in `"download-started"` before a destination is chosen and nothing is written, or `ignore` the response in `decide-policy` |
| `source` in a `_finish` callback is the object the call was made on | cast it back: `(^webkit.CookieManager)(source)` |
| The result of an async call is `res: [^]gio.AsyncResult`; the `_finish` procedure wants `^gio.AsyncResult` | `(^gio.AsyncResult)(res)` |

## webkit:JavaScript — run a script in the page, read the answer

```odin
import "glib:gio"
import "glib:glib"
import "glib:gobject"
import jsc "webkit:javascriptcore"
import webkit "webkit:webkit"

body: cstring = "return { n: document.images.length };"           // a function body, not an expression
webkit.web_view_call_async_javascript_function(view, body, -1, nil, "app-world", nil, cancel, on_script, nil)
// -1: NUL-terminated; nil arguments; a named world keeps the page's own scripts out of it

on_script :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: glib.pointer) {
	context = app_ctx
	err: ^glib.Error
	v := webkit.web_view_call_async_javascript_function_finish((^webkit.WebView)(source), (^gio.AsyncResult)(res), &err)
	if err != nil { glib.error_free(err) }
	if v == nil { return }
	defer gobject.object_unref(v)                            // you own the value
	if !bool(jsc.value_is_object(v)) { return }
	n := jsc.value_object_get_property(v, "n")               // a new reference
	defer gobject.object_unref(n)
	if bool(jsc.value_is_number(n)) { count := jsc.value_to_double(n); _ = count }
	t := jsc.value_object_get_property(v, "t")
	defer gobject.object_unref(t)
	text := jsc.value_to_string(t)                           // a NUL-terminated copy: glib.free
	defer glib.free(rawptr(text))
}

poster := webkit.user_script_new_for_world(js, .USER_CONTENT_INJECT_ALL_FRAMES, .USER_SCRIPT_INJECT_AT_DOCUMENT_END, "app-world", nil, nil)
webkit.user_content_manager_add_script(webkit.web_view_get_user_content_manager(view), poster)
webkit.user_script_unref(poster)                            // the manager has its own
```

| remember | |
|---|---|
| `call_async_javascript_function` runs a function body with a `return`; `evaluate_javascript` runs an expression | the first takes arguments, the second answers with the value of its last statement |
| WebKit completes a call only when the web process answers, whatever the cancellable says | a page that never answers holds your callback's data for the life of the process: keep it allocated until the callback runs |
| Every `jsc.Value` you receive, and every property you read from one, is yours to `gobject.object_unref` | `value_to_string` is a `glib.free`, not an unref |
| A page script's text can quote the page | never show an error message from one |

## webkit:Content — loaded resources and the ad blocker

```odin
import "glib:gio"
import "glib:glib"
import "glib:gobject"
import webkit "webkit:webkit"

// A resource handed over by "resource-load-started": its copy, with no new request.
webkit.web_resource_get_data(resource, cancel, on_data, nil)

on_data :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: glib.pointer) {
	context = app_ctx
	n: glib.size
	err: ^glib.Error
	raw := webkit.web_resource_get_data_finish((^webkit.WebResource)(source), (^gio.AsyncResult)(res), &n, &err)
	if err != nil { glib.error_free(err) }
	if raw != nil && n > 1 { bytes := ([^]byte)(raw)[:n]; _ = bytes }   // one byte and no error is a miss
	glib.free(raw)
}

store := webkit.user_content_filter_store_new("/cache/filters")   // a directory of compiled blockers
defer gobject.object_unref(store)
webkit.user_content_filter_store_load(store, "list-id", nil, on_filter, nil)

on_filter :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: glib.pointer) {
	context = app_ctx
	err: ^glib.Error
	loaded := webkit.user_content_filter_store_load_finish((^webkit.UserContentFilterStore)(source), (^gio.AsyncResult)(res), &err)
	if err != nil { glib.error_free(err) }                   // not in the store: compile the JSON with _save
	_ = loaded
}

manager := webkit.web_view_get_user_content_manager(view)
webkit.user_content_manager_add_filter(manager, filter)            // applies from the next load
webkit.user_content_filter_unref(filter)                           // at shutdown: yours until then
```

| remember | |
|---|---|
| Read a loaded resource with `web_resource_get_data` before downloading it again | a miss is one byte and no error |
| A filter is compiled once and kept in the store under its identifier | `user_content_filter_store_load` first; `_save` only when the load found none |
| `_load_finish` gives you one reference to the filter | the manager takes its own when you add it; `user_content_filter_unref` releases yours |
| Free the raw buffer from `web_resource_get_data_finish` with `glib.free` | and copy what you keep: it goes with the call |
