package javascriptcore

import glib "glib:glib"
import gobj "glib:gobject"

TYPE_VALUE :: value_get_type
TYPE_CLASS :: class_get_type
TYPE_EXCEPTION :: exception_get_type
TYPE_VIRTUAL_MACHINE :: virtual_machine_get_type
TYPE_CONTEXT :: context_get_type
OPTIONS_USE_JIT :: "useJIT"
OPTIONS_USE_DFG :: "useDFGJIT"
OPTIONS_USE_FTL :: "useFTLJIT"
OPTIONS_USE_LLINT :: "useLLInt"
MAJOR_VERSION :: 2
MINOR_VERSION :: 52
MICRO_VERSION :: 6
TYPE_WEAK_VALUE :: weak_value_get_type

Value :: struct #packed {}

ValueClass :: struct {
    parent_class: gobj.ObjectClass,
}
Class :: struct #packed {}

Context :: struct #packed {}

ValuePropertyFlagsBit :: enum u32 {VALUE_PROPERTY_CONFIGURABLE = 0, VALUE_PROPERTY_ENUMERABLE = 1, VALUE_PROPERTY_WRITABLE = 2}
ValuePropertyFlags :: bit_set[ValuePropertyFlagsBit; u32]
TypedArrayType :: enum u32 {TYPED_ARRAY_NONE = 0, TYPED_ARRAY_INT8 = 1, TYPED_ARRAY_INT16 = 2, TYPED_ARRAY_INT32 = 3, TYPED_ARRAY_INT64 = 4, TYPED_ARRAY_UINT8 = 5, TYPED_ARRAY_UINT8_CLAMPED = 6, TYPED_ARRAY_UINT16 = 7, TYPED_ARRAY_UINT32 = 8, TYPED_ARRAY_UINT64 = 9, TYPED_ARRAY_FLOAT32 = 10, TYPED_ARRAY_FLOAT64 = 11 }
Executor :: #type proc "c" (resolve: ^Value, reject: ^Value, user_data: glib.pointer)
ClassClass :: struct {
    parent_class: gobj.ObjectClass,
}
ClassGetPropertyFunction :: #type proc "c" (jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> ^Value
ClassSetPropertyFunction :: #type proc "c" (jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring, value: ^Value) -> glib.boolean
ClassHasPropertyFunction :: #type proc "c" (jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> glib.boolean
ClassDeletePropertyFunction :: #type proc "c" (jsc_class: ^Class, context_p: ^Context, instance: glib.pointer, name: cstring) -> glib.boolean
ClassEnumeratePropertiesFunction :: #type proc "c" (jsc_class: ^Class, context_p: ^Context, instance: glib.pointer) -> ^cstring
_jsc_reserved0_func_ptr_anon_0 :: #type proc "c" ()
_jsc_reserved1_func_ptr_anon_1 :: #type proc "c" ()
_jsc_reserved2_func_ptr_anon_2 :: #type proc "c" ()
_jsc_reserved3_func_ptr_anon_3 :: #type proc "c" ()
_jsc_reserved4_func_ptr_anon_4 :: #type proc "c" ()
_jsc_reserved5_func_ptr_anon_5 :: #type proc "c" ()
_jsc_reserved6_func_ptr_anon_6 :: #type proc "c" ()
_jsc_reserved7_func_ptr_anon_7 :: #type proc "c" ()
ClassVTable :: struct {
    get_property: ClassGetPropertyFunction,
    set_property: ClassSetPropertyFunction,
    has_property: ClassHasPropertyFunction,
    delete_property: ClassDeletePropertyFunction,
    enumerate_properties: ClassEnumeratePropertiesFunction,
    _jsc_reserved0: _jsc_reserved0_func_ptr_anon_0,
    _jsc_reserved1: _jsc_reserved1_func_ptr_anon_1,
    _jsc_reserved2: _jsc_reserved2_func_ptr_anon_2,
    _jsc_reserved3: _jsc_reserved3_func_ptr_anon_3,
    _jsc_reserved4: _jsc_reserved4_func_ptr_anon_4,
    _jsc_reserved5: _jsc_reserved5_func_ptr_anon_5,
    _jsc_reserved6: _jsc_reserved6_func_ptr_anon_6,
    _jsc_reserved7: _jsc_reserved7_func_ptr_anon_7,
}
Exception :: struct #packed {}

ExceptionClass :: struct {
    parent_class: gobj.ObjectClass,
}
VirtualMachine :: struct #packed {}

VirtualMachineClass :: struct {
    parent_class: gobj.ObjectClass,
}
ContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
ExceptionHandler :: #type proc "c" (context_p: ^Context, exception: ^Exception, user_data: glib.pointer)
CheckSyntaxMode :: enum u32 {SCRIPT = 0, MODULE = 1 }
CheckSyntaxResult :: enum u32 {SUCCESS = 0, RECOVERABLE_ERROR = 1, IRRECOVERABLE_ERROR = 2, UNTERMINATED_LITERAL_ERROR = 3, OUT_OF_MEMORY_ERROR = 4, STACK_OVERFLOW_ERROR = 5 }
OptionType :: enum u32 {OPTION_BOOLEAN = 0, OPTION_INT = 1, OPTION_UINT = 2, OPTION_SIZE = 3, OPTION_DOUBLE = 4, OPTION_STRING = 5, OPTION_RANGE_STRING = 6 }
OptionsFunc :: #type proc "c" (option: cstring, type: OptionType, description: cstring, user_data: glib.pointer) -> glib.boolean
WeakValue :: struct #packed {}

WeakValueClass :: struct {
    parent_class: gobj.ObjectClass,
}

@(default_calling_convention = "c")
foreign javascriptcore_runic {
    @(link_name = "jsc_value_get_type")
    value_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_value_get_context")
    value_get_context :: proc(value: ^Value) -> ^Context ---

    @(link_name = "jsc_value_new_undefined")
    value_new_undefined :: proc(context_p: ^Context) -> ^Value ---

    @(link_name = "jsc_value_is_undefined")
    value_is_undefined :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_new_null")
    value_new_null :: proc(context_p: ^Context) -> ^Value ---

    @(link_name = "jsc_value_is_null")
    value_is_null :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_new_number")
    value_new_number :: proc(context_p: ^Context, number: f64) -> ^Value ---

    @(link_name = "jsc_value_is_number")
    value_is_number :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_to_double")
    value_to_double :: proc(value: ^Value) -> f64 ---

    @(link_name = "jsc_value_to_int32")
    value_to_int32 :: proc(value: ^Value) -> glib.int32 ---

    @(link_name = "jsc_value_new_boolean")
    value_new_boolean :: proc(context_p: ^Context, value: glib.boolean) -> ^Value ---

    @(link_name = "jsc_value_is_boolean")
    value_is_boolean :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_to_boolean")
    value_to_boolean :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_new_string")
    value_new_string :: proc(context_p: ^Context, string_p: cstring) -> ^Value ---

    @(link_name = "jsc_value_new_string_from_bytes")
    value_new_string_from_bytes :: proc(context_p: ^Context, bytes: ^glib.Bytes) -> ^Value ---

    @(link_name = "jsc_value_is_string")
    value_is_string :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_to_string")
    value_to_string :: proc(value: ^Value) -> cstring ---

    @(link_name = "jsc_value_to_string_as_bytes")
    value_to_string_as_bytes :: proc(value: ^Value) -> ^glib.Bytes ---

    @(link_name = "jsc_value_new_array")
    value_new_array :: proc(context_p: ^Context, first_item_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_value_new_array_from_garray")
    value_new_array_from_garray :: proc(context_p: ^Context, array: ^glib.PtrArray) -> ^Value ---

    @(link_name = "jsc_value_new_array_from_strv")
    value_new_array_from_strv :: proc(context_p: ^Context, strv: ^cstring) -> ^Value ---

    @(link_name = "jsc_value_is_array")
    value_is_array :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_new_object")
    value_new_object :: proc(context_p: ^Context, instance: glib.pointer, jsc_class: ^Class) -> ^Value ---

    @(link_name = "jsc_value_is_object")
    value_is_object :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_object_is_instance_of")
    value_object_is_instance_of :: proc(value: ^Value, name: cstring) -> glib.boolean ---

    @(link_name = "jsc_value_object_set_property")
    value_object_set_property :: proc(value: ^Value, name: cstring, property: ^Value) ---

    @(link_name = "jsc_value_object_get_property")
    value_object_get_property :: proc(value: ^Value, name: cstring) -> ^Value ---

    @(link_name = "jsc_value_object_set_property_at_index")
    value_object_set_property_at_index :: proc(value: ^Value, index: glib.uint_, property: ^Value) ---

    @(link_name = "jsc_value_object_get_property_at_index")
    value_object_get_property_at_index :: proc(value: ^Value, index: glib.uint_) -> ^Value ---

    @(link_name = "jsc_value_object_has_property")
    value_object_has_property :: proc(value: ^Value, name: cstring) -> glib.boolean ---

    @(link_name = "jsc_value_object_delete_property")
    value_object_delete_property :: proc(value: ^Value, name: cstring) -> glib.boolean ---

    @(link_name = "jsc_value_object_enumerate_properties")
    value_object_enumerate_properties :: proc(value: ^Value) -> ^cstring ---

    @(link_name = "jsc_value_object_invoke_method")
    value_object_invoke_method :: proc(value: ^Value, name: cstring, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_value_object_invoke_methodv")
    value_object_invoke_methodv :: proc(value: ^Value, name: cstring, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---

    @(link_name = "jsc_value_object_define_property_data")
    value_object_define_property_data :: proc(value: ^Value, property_name: cstring, flags: ValuePropertyFlags, property_value: ^Value) ---

    @(link_name = "jsc_value_object_define_property_accessor")
    value_object_define_property_accessor :: proc(value: ^Value, property_name: cstring, flags: ValuePropertyFlags, property_type: gobj.Type, getter: gobj.Callback, setter: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "jsc_value_new_function")
    value_new_function :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_value_new_functionv")
    value_new_functionv :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) -> ^Value ---

    @(link_name = "jsc_value_new_function_variadic")
    value_new_function_variadic :: proc(context_p: ^Context, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) -> ^Value ---

    @(link_name = "jsc_value_is_function")
    value_is_function :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_function_call")
    value_function_call :: proc(value: ^Value, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_value_function_callv")
    value_function_callv :: proc(value: ^Value, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---

    @(link_name = "jsc_value_new_array_buffer")
    value_new_array_buffer :: proc(context_p: ^Context, data: glib.pointer, size_p: glib.size, destroy_notify: glib.DestroyNotify, user_data: glib.pointer) -> ^Value ---

    @(link_name = "jsc_value_is_array_buffer")
    value_is_array_buffer :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_array_buffer_get_data")
    value_array_buffer_get_data :: proc(value: ^Value, size_p: ^glib.size) -> glib.pointer ---

    @(link_name = "jsc_value_array_buffer_get_size")
    value_array_buffer_get_size :: proc(value: ^Value) -> glib.size ---

    @(link_name = "jsc_value_new_typed_array")
    value_new_typed_array :: proc(context_p: ^Context, type: TypedArrayType, length: glib.size) -> ^Value ---

    @(link_name = "jsc_value_new_typed_array_with_buffer")
    value_new_typed_array_with_buffer :: proc(array_buffer: ^Value, type: TypedArrayType, offset: glib.size, length: glib.ssize) -> ^Value ---

    @(link_name = "jsc_value_is_typed_array")
    value_is_typed_array :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_typed_array_get_type")
    value_typed_array_get_type :: proc(value: ^Value) -> TypedArrayType ---

    @(link_name = "jsc_value_typed_array_get_data")
    value_typed_array_get_data :: proc(value: ^Value, length: ^glib.size) -> glib.pointer ---

    @(link_name = "jsc_value_typed_array_get_length")
    value_typed_array_get_length :: proc(value: ^Value) -> glib.size ---

    @(link_name = "jsc_value_typed_array_get_size")
    value_typed_array_get_size :: proc(value: ^Value) -> glib.size ---

    @(link_name = "jsc_value_typed_array_get_offset")
    value_typed_array_get_offset :: proc(value: ^Value) -> glib.size ---

    @(link_name = "jsc_value_typed_array_get_buffer")
    value_typed_array_get_buffer :: proc(value: ^Value) -> ^Value ---

    @(link_name = "jsc_value_is_constructor")
    value_is_constructor :: proc(value: ^Value) -> glib.boolean ---

    @(link_name = "jsc_value_constructor_call")
    value_constructor_call :: proc(value: ^Value, first_parameter_type: gobj.Type, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_value_constructor_callv")
    value_constructor_callv :: proc(value: ^Value, n_parameters: glib.uint_, parameters: [^]^Value) -> ^Value ---

    @(link_name = "jsc_value_new_from_json")
    value_new_from_json :: proc(context_p: ^Context, json: cstring) -> ^Value ---

    @(link_name = "jsc_value_to_json")
    value_to_json :: proc(value: ^Value, indent: glib.uint_) -> cstring ---

    @(link_name = "jsc_value_new_promise")
    value_new_promise :: proc(context_p: ^Context, executor: Executor, user_data: glib.pointer) -> ^Value ---

    @(link_name = "jsc_class_get_type")
    class_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_class_get_name")
    class_get_name :: proc(jsc_class: ^Class) -> cstring ---

    @(link_name = "jsc_class_get_parent")
    class_get_parent :: proc(jsc_class: ^Class) -> ^Class ---

    @(link_name = "jsc_class_add_constructor")
    class_add_constructor :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> ^Value ---

    @(link_name = "jsc_class_add_constructorv")
    class_add_constructorv :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) -> ^Value ---

    @(link_name = "jsc_class_add_constructor_variadic")
    class_add_constructor_variadic :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) -> ^Value ---

    @(link_name = "jsc_class_add_method")
    class_add_method :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_params: glib.uint_, #c_vararg var_args: ..any) ---

    @(link_name = "jsc_class_add_methodv")
    class_add_methodv :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type, n_parameters: glib.uint_, parameter_types: [^]gobj.Type) ---

    @(link_name = "jsc_class_add_method_variadic")
    class_add_method_variadic :: proc(jsc_class: ^Class, name: cstring, callback: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify, return_type: gobj.Type) ---

    @(link_name = "jsc_class_add_property")
    class_add_property :: proc(jsc_class: ^Class, name: cstring, property_type: gobj.Type, getter: gobj.Callback, setter: gobj.Callback, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "jsc_exception_get_type")
    exception_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_exception_new")
    exception_new :: proc(context_p: ^Context, message: cstring) -> ^Exception ---

    @(link_name = "jsc_exception_new_printf")
    exception_new_printf :: proc(context_p: ^Context, format: cstring, #c_vararg var_args: ..any) -> ^Exception ---

    // exception_new_vprintf skipped: its trailing va_list is dropped by runic, so it would be a wrong #c_vararg ..any call

    @(link_name = "jsc_exception_new_with_name")
    exception_new_with_name :: proc(context_p: ^Context, name: cstring, message: cstring) -> ^Exception ---

    @(link_name = "jsc_exception_new_with_name_printf")
    exception_new_with_name_printf :: proc(context_p: ^Context, name: cstring, format: cstring, #c_vararg var_args: ..any) -> ^Exception ---

    // exception_new_with_name_vprintf skipped: its trailing va_list is dropped by runic, so it would be a wrong #c_vararg ..any call

    @(link_name = "jsc_exception_get_name")
    exception_get_name :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_exception_get_message")
    exception_get_message :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_exception_get_line_number")
    exception_get_line_number :: proc(exception: ^Exception) -> glib.uint_ ---

    @(link_name = "jsc_exception_get_column_number")
    exception_get_column_number :: proc(exception: ^Exception) -> glib.uint_ ---

    @(link_name = "jsc_exception_get_source_uri")
    exception_get_source_uri :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_exception_get_backtrace_string")
    exception_get_backtrace_string :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_exception_to_string")
    exception_to_string :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_exception_report")
    exception_report :: proc(exception: ^Exception) -> cstring ---

    @(link_name = "jsc_virtual_machine_get_type")
    virtual_machine_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_virtual_machine_new")
    virtual_machine_new :: proc() -> ^VirtualMachine ---

    @(link_name = "jsc_context_get_type")
    context_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_context_new")
    context_new :: proc() -> ^Context ---

    @(link_name = "jsc_context_new_with_virtual_machine")
    context_new_with_virtual_machine :: proc(vm: ^VirtualMachine) -> ^Context ---

    @(link_name = "jsc_context_get_virtual_machine")
    context_get_virtual_machine :: proc(context_p: ^Context) -> ^VirtualMachine ---

    @(link_name = "jsc_context_get_exception")
    context_get_exception :: proc(context_p: ^Context) -> ^Exception ---

    @(link_name = "jsc_context_throw")
    context_throw :: proc(context_p: ^Context, error_message: cstring) ---

    @(link_name = "jsc_context_throw_printf")
    context_throw_printf :: proc(context_p: ^Context, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "jsc_context_throw_with_name")
    context_throw_with_name :: proc(context_p: ^Context, error_name: cstring, error_message: cstring) ---

    @(link_name = "jsc_context_throw_with_name_printf")
    context_throw_with_name_printf :: proc(context_p: ^Context, error_name: cstring, format: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "jsc_context_throw_exception")
    context_throw_exception :: proc(context_p: ^Context, exception: ^Exception) ---

    @(link_name = "jsc_context_clear_exception")
    context_clear_exception :: proc(context_p: ^Context) ---

    @(link_name = "jsc_context_push_exception_handler")
    context_push_exception_handler :: proc(context_p: ^Context, handler: ExceptionHandler, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---

    @(link_name = "jsc_context_pop_exception_handler")
    context_pop_exception_handler :: proc(context_p: ^Context) ---

    @(link_name = "jsc_context_get_current")
    context_get_current :: proc() -> ^Context ---

    @(link_name = "jsc_context_evaluate")
    context_evaluate :: proc(context_p: ^Context, code: cstring, length: glib.ssize) -> ^Value ---

    @(link_name = "jsc_context_evaluate_with_source_uri")
    context_evaluate_with_source_uri :: proc(context_p: ^Context, code: cstring, length: glib.ssize, uri: cstring, line_number: glib.uint_) -> ^Value ---

    @(link_name = "jsc_context_evaluate_in_object")
    context_evaluate_in_object :: proc(context_p: ^Context, code: cstring, length: glib.ssize, object_instance: glib.pointer, object_class: ^Class, uri: cstring, line_number: glib.uint_, object: ^^Value) -> ^Value ---

    @(link_name = "jsc_context_check_syntax")
    context_check_syntax :: proc(context_p: ^Context, code: cstring, length: glib.ssize, mode: CheckSyntaxMode, uri: cstring, line_number: u32, exception: ^^Exception) -> CheckSyntaxResult ---

    @(link_name = "jsc_context_get_global_object")
    context_get_global_object :: proc(context_p: ^Context) -> ^Value ---

    @(link_name = "jsc_context_set_value")
    context_set_value :: proc(context_p: ^Context, name: cstring, value: ^Value) ---

    @(link_name = "jsc_context_get_value")
    context_get_value :: proc(context_p: ^Context, name: cstring) -> ^Value ---

    @(link_name = "jsc_context_register_class")
    context_register_class :: proc(context_p: ^Context, name: cstring, parent_class: ^Class, vtable: ^ClassVTable, destroy_notify: glib.DestroyNotify) -> ^Class ---

    @(link_name = "jsc_options_set_boolean")
    options_set_boolean :: proc(option: cstring, value: glib.boolean) -> glib.boolean ---

    @(link_name = "jsc_options_get_boolean")
    options_get_boolean :: proc(option: cstring, value: ^glib.boolean) -> glib.boolean ---

    @(link_name = "jsc_options_set_int")
    options_set_int :: proc(option: cstring, value: glib.int_) -> glib.boolean ---

    @(link_name = "jsc_options_get_int")
    options_get_int :: proc(option: cstring, value: ^glib.int_) -> glib.boolean ---

    @(link_name = "jsc_options_set_uint")
    options_set_uint :: proc(option: cstring, value: glib.uint_) -> glib.boolean ---

    @(link_name = "jsc_options_get_uint")
    options_get_uint :: proc(option: cstring, value: ^glib.uint_) -> glib.boolean ---

    @(link_name = "jsc_options_set_size")
    options_set_size :: proc(option: cstring, value: glib.size) -> glib.boolean ---

    @(link_name = "jsc_options_get_size")
    options_get_size :: proc(option: cstring, value: ^glib.size) -> glib.boolean ---

    @(link_name = "jsc_options_set_double")
    options_set_double :: proc(option: cstring, value: glib.double) -> glib.boolean ---

    @(link_name = "jsc_options_get_double")
    options_get_double :: proc(option: cstring, value: ^glib.double) -> glib.boolean ---

    @(link_name = "jsc_options_set_string")
    options_set_string :: proc(option: cstring, value: cstring) -> glib.boolean ---

    @(link_name = "jsc_options_get_string")
    options_get_string :: proc(option: cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "jsc_options_set_range_string")
    options_set_range_string :: proc(option: cstring, value: cstring) -> glib.boolean ---

    @(link_name = "jsc_options_get_range_string")
    options_get_range_string :: proc(option: cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "jsc_options_foreach")
    options_foreach :: proc(function: OptionsFunc, user_data: glib.pointer) ---

    @(link_name = "jsc_options_get_option_group")
    options_get_option_group :: proc() -> ^glib.OptionGroup ---

    @(link_name = "jsc_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "jsc_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "jsc_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "jsc_weak_value_get_type")
    weak_value_get_type :: proc() -> gobj.Type ---

    @(link_name = "jsc_weak_value_new")
    weak_value_new :: proc(value: ^Value) -> ^WeakValue ---

    @(link_name = "jsc_weak_value_get_value")
    weak_value_get_value :: proc(weak_value: ^WeakValue) -> ^Value ---

}

foreign import javascriptcore_runic "system:javascriptcoregtk-6.0"

