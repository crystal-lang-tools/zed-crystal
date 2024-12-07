(method_def "end" @end) @indent
(class_def "end" @end) @indent
(module_def "end" @end) @indent
(struct_def "end" @end) @indent
(enum_def "end" @end) @indent
(annotation_def "end" @end) @indent
(enum_def "end" @end) @indent
(begin_block "end" @end) @indent
;; (do_end_block "end" @end) @indent

(when "end" @end) @indent
(in "end" @end) @indent

(then) @indent
(call) @indent

(ensure) @outdent
("rescue") @outdent
(else) @outdent


(_ "[" "]" @end) @indent
(_ "{" "}" @end) @indent
(_ "(" ")" @end) @indent
