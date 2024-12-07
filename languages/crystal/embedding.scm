(
    (comment)* @context
    .
    [
        (module_def
            "module" @name
            name: (_) @name)
        (method_def
            "def" @name
            name: (_) @name)
        (class_def
            "class" @name
            name: (_) @name)
        (struct_def
            "struct" @name
            name: (_) @name)
        (enum_def
            "enum" @name
            name: (_) @name)
        (annotation_def
            "annotation" @name
            name: (_) @name)
        ] @item
    )
