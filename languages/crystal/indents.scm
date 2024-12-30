(method_def "end" @end) @indent
(class_def "end" @end) @indent
(module_def "end" @end) @indent
(struct_def "end" @end) @indent
(enum_def "end" @end) @indent
(annotation_def "end" @end) @indent
(enum_def "end" @end) @indent
(begin "end" @end) @indent
(block "end" @end) @indent

(case
  [
    (when)
    (in)
  ] @indent
  "end" @outdent)

(then) @indent
(call) @indent

(ensure) @outdent
("rescue") @outdent
(else) @outdent


(_ "[" "]" @end) @indent
(_ "{" "}" @end) @indent
(_ "(" ")" @end) @indent
