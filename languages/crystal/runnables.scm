(
    (call
       	method: (_) @_name
        arguments: (argument_list
        [(constant) (symbol) (string)] @run)
        (#match? @_name "^(describe|context|it)$"))
    (#set! tag crystal-spec)
)
