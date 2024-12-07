(heredoc_body
  (heredoc_content) @content
  (heredoc_end) @language
  (#downcase! @language))

;; ((regex
;;   (_delimited_string_contents) @content)
;;   (#set! "language" "regex"))
