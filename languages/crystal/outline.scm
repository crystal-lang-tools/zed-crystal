(comment) @annotation

(class_def
    "class" @context
    name: (_) @name) @item

(struct_def
    "struct" @context
    name: (_) @name) @item

(method_def
    "def" @context
    ((_) @context
    "." @context)?
    name: (_) @name) @item

(macro_def
    "macro" @context
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

(lib_def
	"lib" @context
    name: (_) @name) @item

(type_def
	"type" @context
	(constant) @name) @item

(c_struct_def
	"struct" @context
    name: (_) @name) @item

(union_def
	"union" @context
    name: (_) @name) @item

(alias
    "alias" @context
    name: (_) @name) @item

(const_assign
    lhs: (_) @name) @item

(enum_def
	body: (expressions
    	(constant) @name @item))

(call
    method: (_) @context
    arguments: (_) @name
    (#match? @context "(class_)?(getter|setter|property)[?!]?")) @item

(call
    method: (_) @context
    arguments: (argument_list
        (constant) @name)
    (#match? @context "record")) @item
