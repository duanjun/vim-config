"===================== vundle =========================================
" required!
filetype off

"/**  vundle从这行开始  **/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/vundle/')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Github网站上非vim-scripts仓库的插件，按下面格式填写
"Plugin 'tpope/vim-fugitive'

":vim-scripts仓库里的，按下面格式填写
Plugin 'molokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'matchit.zip'
Plugin 'less.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'vim-scripts/Emmet.vim'
Plugin 'SirVer/ultisnips'
Plugin 'rking/ag.vim'
Plugin 'taiansu/nerdtree-ag'
Plugin 'wookiehangover/jshint.vim'
Plugin 'EasyMotion'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tpope/vim-surround'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'nginx.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'fugitive.vim'
Plugin 'mxw/vim-jsx'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'scrooloose/syntastic'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'hallettj/jslint.vim'
"Plugin 'PIV'  "php 语法用的

call vundle#end()
"non github repos   (非上面两种情况的，按下面格式填写)
"Plugin 'git://git.wincent.com/command-t.git'
filetype plugin indent on     " required!


"/** vundle命令 **/
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

"===================== vundle =========================================
