[
  "alias"
  "annotation"
  "begin"
  "break"
  "case"
  "class"
  "def"
  "do"
  "else"
  "elsif"
  "end"
  "ensure"
  "enum"
  "extend"
  "for"
  "fun"
  "if"
  "in"
  "include"
  "lib"
  "macro"
  "module"
  "next"
  "of"
  "require"
  "rescue"
  "return"
  "select"
  "struct"
  "then"
  "type"
  "union"
  "unless"
  "until"
  "verbatim"
  "when"
  "while"
  "yield"
] @keyword

(conditional
  [
    "?"
    ":"
  ] @punctuation)

[
  (private)
  (protected)
  "abstract"
] @keyword

(pseudo_constant) @constant

; literals
(string) @string

(symbol) @string.special.symbol

(regex
  "/" @punctuation.delimiter) @string.regex

(heredoc_content) @string

[
  (heredoc_start)
  (heredoc_end)
] @label

(string_escape_sequence) @string.escape

[
  (integer)
  (float)
] @number

[
  (true)
  (false)
  (nil)
  (self)
] @variable.special

(
  (comment)+ @comment.doc
  .
  [
    (class_def)
    (struct_def)
    (method_def)
    (macro_def)
    (module_def)
    (enum_def)
    (annotation_def)
    (lib_def)
    (type_def)
    (c_struct_def)
    (union_def)
    (alias)
    (const_assign)
  ]
)

(comment) @comment

; Operators and punctuation
[
  "="
  "=>"
  "->"
] @operator

(operator) @operator

[
  ","
  ";"
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

(index_call
  method: (operator) @punctuation.bracket
  [
    "]"
    "]?"
  ] @punctuation.bracket)

[
  "{%"
  "%}"
  "{{"
  "}}"
] @preproc

(interpolation
  "#{" @punctuation.delimiter
  "}" @punctuation.delimiter)

(identifier) @variable

; Types
[
  (constant)
  (generic_instance_type)
  (generic_type)
] @type

(nilable_constant
  "?" @type)

(nilable_type
  "?" @type)

(annotation
  (constant) @attribute)

(method_def
  name: [
    (identifier)
    (constant)
  ] @function)

(macro_def
  name: [
    (identifier)
    (constant)
  ] @function)

(macro_var) @variable

[
  (class_var)
  (instance_var)
] @property

(underscore) @variable.special

(pointer_type
  "*" @operator)

; function calls
(call
  method: (_) @function)

(implicit_object_call
  method: (_) @function)

(call
    method: (_) @keyword
    arguments: (argument_list
      [
        (type_declaration
          var: (_) @function)
        (assign
          lhs: (_) @function)
        (_) @function
      ])
    (#match? @keyword "(class_)?(getter|setter|property)[?!]?"))
