
## Usage

### ~/.tern-config
```
     {
       "libs": [
         "browser",
         "jquery",
         "underscore"
       ],
       "plugins": {
           "doc_comment": null,
           "angular": {},
           "react": {},
           "node": {}
       }
     }
```

### ~/.editorconfig

```
    ;.editorconfig

    root = true

    [**.js]
    ; path to optional external js beautifier, default is vim-jsbeautify/plugin/lib
    ;path=~/.vim/plugged/js-beautify/js/lib/beautify.js
    ; Javascript interpreter to be invoked by default 'node'
    bin=node
    indent_style = space
    indent_size = 4

    [**.css]
    ;path=~/.vim/plugged/js-beautify/js/lib/beautify-css.js
    indent_style = space
    indent_size = 4

    [**.html]
    ; Using special comments
    ; And such comments or apply only in global configuration
    ; So it's best to avoid them
    ;vim:path=~/.vim/bundle/js-beautify/js/lib/beautify-html.js
    ;vim:max_char=78:brace_style=expand
    indent_style = space
    indent_size = 4
```

### ~/.tsconfig.json
### ~/.eslintrc.json
