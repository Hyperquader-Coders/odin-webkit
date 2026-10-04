package javascriptcore

import glib "glib:glib"
import gobj "glib:gobject"

// One typed pin per post-generation rule (docs/PATCHED.md). A regeneration that drops or
// changes a rewritten declaration fails to compile here.

// gchar * is cstring, not ^char.
@(private)
patched_value_to_string: proc "c" (_: ^Value) -> cstring = value_to_string

// TYPE_FOO names the foo_get_type procedure.
@(private)
patched_type_value: proc "c" () -> gobj.Type = TYPE_VALUE

// The version macros are integers, not backtick strings.
@(private)
patched_major_version: int = MAJOR_VERSION

// One pin per `[^]T` parameter corrected to `^T` (docs/PATCHED.md, `single_params`): the C header
// passes one `T *`, not the array runic writes for a name ending in "s".

@(private = "file")
patched_class_add_constructor_variadic: proc "c" (_: ^Class, _: cstring, _: gobj.Callback, _: glib.pointer, _: glib.DestroyNotify, _: gobj.Type) -> ^Value = class_add_constructor_variadic

@(private = "file")
patched_context_evaluate_in_object: proc "c" (_: ^Context, _: cstring, _: glib.ssize, _: glib.pointer, _: ^Class, _: cstring, _: glib.uint_, _: ^^Value) -> ^Value = context_evaluate_in_object

@(private = "file")
patched_context_register_class: proc "c" (_: ^Context, _: cstring, _: ^Class, _: ^ClassVTable, _: glib.DestroyNotify) -> ^Class = context_register_class

@(private = "file")
patched_value_new_string_from_bytes: proc "c" (_: ^Context, _: ^glib.Bytes) -> ^Value = value_new_string_from_bytes
