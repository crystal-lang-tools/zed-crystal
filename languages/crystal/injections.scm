(regex
  (literal_content) @injection.content
  (#set! injection.language "regex"))

(heredoc_body
  (literal_content) @injection.content
  (heredoc_end) @injection.language
  (#downcase! injection.language))

(macro_def
  body: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_begin
  body: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_if
  then: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_elsif
  then: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_else
  body: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_unless
  then: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_for
  body: (expressions) @injection.content
  (#set! injection.language "crystal"))

(macro_verbatim
  body: (expressions) @injection.content
  (#set! injection.language "crystal"))
