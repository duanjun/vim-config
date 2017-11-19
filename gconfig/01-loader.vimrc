call plug#begin('~/.vim/plugged')

"Plug 'tomasr/molokai'
Plug 'itchyny/vim-gitbranch'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ivalkeen/nerdtree-execute'
Plug 'mattn/emmet-vim'
Plug 'duanjun/ag.vim'
Plug 'taiansu/nerdtree-ag' , { 'on': 'NERDTreeToggle' }
Plug 'skywind3000/asyncrun.vim'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier', {'do': 'npm install',  'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'html'] }

Plug 'mhinz/vim-startify', {'do': 'npm install'}

call plug#end()

"Plug options
"Option Description
"branch/tag/commit  Branch/tag/commit of the repository to use
"rtp    Subdirectory that contains Vim plugin
"dir    Custom directory for the plugin
"as Use different name for the plugin
"do Post-update hook (string or funcref)
"on On-demand loading: Commands or <Plug>-mappings
"for    On-demand loading: File types
"frozen Do not update unless explicitly specified


"PlugInstall [name ...] [#threads]  Install plugins
"PlugUpdate [name ...] [#threads]   Install or update plugins
"PlugClean[!]   Remove unused directories (bang version will clean without prompt)
"PlugUpgrade    Upgrade vim-plug itself
"PlugStatus Check the status of plugins
"PlugDiff   Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path]  Generate script for restoring the current snapshot of the plugins
