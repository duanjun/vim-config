call plug#begin('~/.vim/plugged')
"Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-rooter'
Plug 'andymass/matchup.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ivalkeen/nerdtree-execute'
Plug 'mattn/emmet-vim'
Plug 'duanjun/ag.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'taiansu/nerdtree-ag' , { 'on': 'NERDTreeToggle' }
Plug 'leafgarland/typescript-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'easymotion/vim-easymotion'
Plug 'heavenshell/vim-jsdoc'
Plug 'tpope/vim-surround'
Plug 'chr4/nginx.vim', {'for': 'nginx.conf'}
Plug 'prettier/vim-prettier', {'do': 'npm install',  'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'html'] }

Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'mhinz/vim-startify', {'do': 'npm install'}

"Plug 'w0rp/ale'

"if !has('nvim')
    "Plug 'roxma/vim-hug-neovim-rpc'
"endif

Plug 'duanjun/nvim-cm-tern', {'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'markdown', 'html'] }
Plug 'roxma/nvim-completion-manager'

augroup load_us_ycm
  autocmd!
  "autocmd InsertEnter * call plug#load('YouCompleteMe')
augroup END

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
