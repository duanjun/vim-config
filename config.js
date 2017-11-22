// For more information on customizing Oni,
// check out our wiki page:
// https://github.com/extr0py/oni/wiki/Configuration

const activate = (oni) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
}

const deactivate = () => {
    console.log("config deactivated")
}

/*let default config = {*/
    //activate: noop,
    //deactivate: noop,

    //"autoUpdate.enabled": true,

    //"debug.fixedSize": null,
    //"debug.neovimPath": null,
    //"debug.persistOnNeovimExit": false,
    //"debug.detailedSessionLogging": false,
    //"debug.showTypingPrediction": false,

    //"debug.fakeLag.languageServer": null,
    //"debug.fakeLag.neovimInput": null,

    //"experimental.autoClosingPairs.enabled": false,
    //"experimental.autoClosingPairs.default": [
        //{ "open": "{", "close": "}" },
        //{ "open": "[", "close": "]" },
        //{ "open": "(", "close": ")" },
    //],

    //"experimental.editor.typingPrediction": false,

    //"experimental.neovim.transport": "stdio",
    //// TODO: Enable pipe transport for Windows
    //// "experimental.neovim.transport": Platform.isWindows() ? "pipe" : "stdio",
    //"oni.audio.bellUrl": null,

    //"oni.useDefaultConfig": true,

    //"oni.enhancedSyntaxHighlighting": true,

    //"oni.loadInitVim": false,

    //"oni.useExternalPopupMenu": true,

    //"oni.hideMenu": false,

    //"oni.exclude": ["node_modules", ".git"],
    //"oni.bookmarks": [],

    //"editor.backgroundOpacity": 1.0,
    //"editor.backgroundImageUrl": null,
    //"editor.backgroundImageSize": "cover",

    //"editor.clipboard.enabled": true,

    //"editor.quickInfo.enabled": true,
    //"editor.quickInfo.delay": 500,

    //"editor.completions.enabled": true,
    //"editor.errors.slideOnFocus": true,
    //"editor.formatting.formatOnSwitchToNormalMode": false,

    //"editor.fontLigatures": true,
    //"editor.fontSize": "12px",
    //"editor.fontFamily": "",

    //"editor.linePadding": 2,

    //"editor.quickOpen.execCommand": null,

    //"editor.scrollBar.visible": true,

    //"editor.fullScreenOnStart": false,
    //"editor.maximizeScreenOnStart": false,

    //"editor.cursorLine": true,
    //"editor.cursorLineOpacity": 0.1,

    //"editor.cursorColumn": false,
    //"editor.cursorColumnOpacity": 0.1,

    //"environment.additionalPaths": [],

    //"language.go.languageServer.command": "go-langserver",
    //"language.python.languageServer.command": "pyls",
    //"language.cpp.languageServer.command": "clangd",
    //"language.c.languageServer.command": "clangd",

    //"language.css.languageServer.command": cssLanguageServerPath,
    //"language.css.languageServer.arguments": ["--stdio"],

    //"language.less.languageServer.command": cssLanguageServerPath,
    //"language.less.languageServer.arguments": ["--stdio"],

    //"language.scss.languageServer.command": cssLanguageServerPath,
    //"language.scss.languageServer.arguments": ["--stdio"],

    //"language.reason.languageServer.command": ocamlLanguageServerPath,
    //"language.reason.languageServer.arguments": ["--stdio"],
    //"language.reason.languageServer.rootFiles": [".merlin", "bsconfig.json"],
    //"language.reason.languageServer.configuration": ocamlAndReasonConfiguration,

    //"language.ocaml.languageServer.command": ocamlLanguageServerPath,
    //"language.ocaml.languageServer.arguments": ["--stdio"],
    //"language.ocaml.languageServer.configuration": ocamlAndReasonConfiguration,

    //"language.typescript.completionTriggerCharacters": [".", "/", "\\"],

    //"language.javascript.completionTriggerCharacters": [".", "/", "\\"],

    //"menu.caseSensitive": "smart",

    //"recorder.copyScreenshotToClipboard": false,
    //"recorder.outputPath": os.tmpdir(),

    //"statusbar.enabled": true,
    //"statusbar.fontSize": "0.9em",

    //"ui.animations.enabled": true,
    //"ui.fontFamily": "BlinkMacSystemFont, 'Lucida Grande', 'Segoe UI', Ubuntu, Cantarell, sans-serif",
    //"ui.fontSize": "13px",
//}

module.exports = {
    activate,
    deactivate,
   //add custom config here, such as
   //"oni.loadInitVim": false,
   "oni.exclude": [
       '**/node_modules/**',
       '.git/**',
       'Applications/**',
       'Library/**',
       '/etc/**',
       '/home/**',
       '/Network/**',
       '/net/**',
       '/private/**',
       '/sbin/**',
       '/usr/**',
       '/bin/**',
       '/Volumes/**',
       '/dev/**',
       '/cores/**',
       '/var/**',
       '/data/**',
       '/System/**',

       '/\.*/**',
       '**/\.*/**',

       '**/backupvim/**',
       '**/Shared/**',
       '**/Downloads/**',
   ],
   "environment.additionalPaths": ["/Users/duanjun/.nvm/versions/node/v8.1.0/bin","/usr/local/bin","/usr/bin","/bin","/usr/sbin", "/sbin"],
   "oni.bookmarks": ["~/Documents/project"],
   "oni.useDefaultConfig": false,
   "oni.loadInitVim": "$HOME/.vim/ginit.vim",
   "editor.cursorLine": false,
   "editor.linePadding" : 2,
   "editor.fontSize": "16px",
   "editor.fontFamily": "Monaco",
   "editor.backgroundOpacity": "1",
   "editor.fullScreenOnStart" : false,
   "editor.maximizeScreenOnStart": true,
   "editor.scrollBar.visible": false,
   "statusbar.enabled": false,

    "tabs.enabled": false,
    "tabs.showVimTabs": false,
    "tabs.height": "1.0em",
    "tabs.maxWidth": "20em",
    "tabs.wrap": false
}
