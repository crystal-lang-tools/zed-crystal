[
  ","
  ";"
  "."
  ":"
  "*"
  "**"
] @punctuation.delimiter

[
  "alias"
  "alignof"
  "annotation"
  "asm"
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
  "forall"
  "fun"
  "if"
  "in"
  "include"
  "instance_alignof"
  "instance_sizeof"
  "lib"
  "macro"
  "module"
  "next"
  "of"
  "offsetof"
  "out"
  "pointerof"
  "require"
  "rescue"
  "return"
  "select"
  "sizeof"
  "struct"
  "then"
  "type"
  "typeof"
  "uninitialized"
  "union"
  "unless"
  "until"
  "verbatim"
  "when"
  "while"
  "with"
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
(char
    ["'" (literal_content)] @string.special)

(char
    (escape_sequence) @string.escape)

(string
    ["\"" (literal_content)] @string)

(string
  (escape_sequence) @string.escape)

(symbol
  [
    ":"
    ":\""
    "\""
    (literal_content)
  ] @string.special.symbol)

(symbol
  (escape_sequence) @string.escape)

(command
    ["`" (literal_content)] @string.special)

(command
  (escape_sequence) @string.escape)

(regex
  "/" @punctuation.bracket)

(regex
  (literal_content) @string.regex)

(regex_modifier) @string.special.symbol

(heredoc_body
    (literal_content) @string)

(heredoc_body
    (escape_sequence) @string.escape)

[
  (heredoc_start)
  (heredoc_end)
] @string.escape

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

(comment) @comment

(
  (comment)+ @comment.doc
  .
  [
    (class_def)
    (struct_def)
    (method_def)
    (abstract_method_def)
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

; Operators and punctuation
[
  "="
  "=>"
  "->"
  "&"
  (operator)
] @operator

[
  "("
  ")"
  "["
  "@["
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

(block
    "|" @punctuation.bracket)

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

; TODO: {splat,double_splat,block,fun}_param + rescue param

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

(union_type
    "|" @operator)

(annotation
  (constant) @attribute)

(method_def
  name: (identifier) @function)

(macro_def
  name: (identifier) @function)

(abstract_method_def
  name: (identifier) @function)

(fun_def
  name: (identifier) @function
  real_name: (identifier)? @function)

(macro_var) @variable

[
  (class_var)
  (instance_var)
] @property

(named_expr
  name: (identifier) @property
  ":" @property)

(named_type
    name: (identifier) @property)

(underscore) @variable.special

; function calls
(call
  method: (_) @function)

(implicit_object_call
  method: (_) @function)

(method_proc
  method: (_) @function)

(assign_call
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
    (#match? @keyword "^(class_)?(getter|setter|property)[?!]?$"))

(call
    method: (_) @keyword
    (#match? @keyword "^(record|is_a\\?|as|as\\?|responds_to\\?|nil\\?|\\!)$"))

((identifier) @keyword
  (#match? @keyword "^(previous_def|super)$"))
