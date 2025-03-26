(
    (comment)* @context
    .
    [
        (alias
            "alias" @name
            name: (_) @name)
        (annotation_def
            "annotation" @name
            name: (_) @name)
        (c_struct_def
            "struct" @name
            name: (_) @name)
        (class_def
            "class" @name
            name: (_) @name)
        (const_assign
            lhs: (_) @name)
        (enum_def
            "enum" @name
            name: (_) @name)
        (lib_def
            "lib" @name
            name: (_) @name)
        (macro_def
            "macro" @name
            name: (_) @name)
        (method_def
            "def" @name
            name: (_) @name)
        (abstract_method_def
            "def" @name
            name: (_) @name)
        (module_def
            "module" @name
            name: (_) @name)
        (struct_def
            "struct" @name
            name: (_) @name)
        (type_def
            "type" @name
            name: (_) @name)
        (union_def
            "union" @name
            name: (_) @name)
    ] @item
)
