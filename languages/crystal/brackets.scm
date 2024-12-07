("[" @open "]" @close)
("{" @open "}" @close)
("\"" @open "\"" @close)

(begin_block "begin" @open "end" @close)
("do" @open "end" @close)

;; (block_parameters "|" @open "|" @close)
(interpolation "#{" @open "}" @close)

(if "if" @open "end" @close)
(unless "unless" @open "end" @close)
(while "while" @open "end" @close)
(until "until" @open "end" @close)
(case "case" @open "end" @close)

(module_def "module" @open "end" @close)
(class_def "class" @open "end" @close)
(struct_def "class" @open "end" @close)
(enum_def "enum" @open "end" @close)
(annotation_def "annotation" @open "end" @close)
(method_def "def" @open "end" @close)
