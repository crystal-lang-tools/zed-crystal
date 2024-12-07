(class_def
    "class" @context
    name: (_) @name) @item

(struct_def
    "class" @context
    name: (_) @name) @item

((identifier) @context
  (#match? @context "^(private|protected)$")) @item

(method_def
    "def" @context
    name: (_) @name) @item

(module_def
    "module" @context
    name: (_) @name) @item

(enum_def
    "enum" @context
    name: (_) @name) @item

(annotation_def
    "annotation" @context
    name: (_) @name) @item

(alias
    "alias" @context
    name: (_) @name) @item
