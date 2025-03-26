# Crystal Lang Support for Zed

Uses the Crystal lang tree-sitter found at [crystal-lang-tools/tree-sitter-crystal](https://github.com/crystal-lang-tools/tree-sitter-crystal),
which is mostly complete, and can parse the majority of Crystal's own source code without errors.

Also uses [Crystalline](https://github.com/elbywan/crystalline) and [ameba-ls](https://github.com/crystal-lang-tools/ameba-ls) for LSP functionality, if they're available in `$PATH`.

![](./assets/image.png)

## Extension Settings

To use the Crystal formatter directly instead of using the language server for formatting—for example, if a language server isn't available—copy the following into Zed's settings file:

```json
"languages": {
  "Crystal": {
    "formatter": {
      "external": {
        "command": "crystal",
        "arguments": [
          "tool",
          "format",
          "-"
        ]
      }
    }
  }
}
```

To disable Crystalline, copy the following:

```json
"languages": {
  "Crystal": {
    "enable_language_server": false,
  }
}
```
