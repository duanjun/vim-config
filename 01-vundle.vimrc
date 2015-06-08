"===================== vundle =========================================
" required!
filetype off

"/**  vundle从这行开始  **/
set rtp+=~/.vim/bundle/vundle/vundle/
call vundle#rc('~/.vim/bundle/vundle/')


" let Vundle manage Vundle
" required!

Bundle 'gmarik/vundle'

"Github网站上非vim-scripts仓库的插件，按下面格式填写
"Bundle 'tpope/vim-fugitive'

"vim-scripts仓库里的，按下面格式填写
Bundle 'molokai'
Bundle 'evening_2'
Bundle 'ctrlp.vim'
Bundle 'matchit.zip'
Bundle 'less.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'AutoComplPop'
Bundle 'godlygeek/tabular'
Bundle 'qiyu2580/vimcdoc'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'snipMate'
Bundle 'rking/ag.vim'
Bundle 'taiansu/nerdtree-ag'
Bundle 'hallettj/jslint.vim'
Bundle 'EasyMotion'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'tpope/vim-fugitive'
Bundle 'Yggdroot/indentLine'
Bundle 'vcscommand.vim'

Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'garbas/vim-snipmate'

"non github repos   (非上面两种情况的，按下面格式填写)
"Bundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on     " required!


"/** vundle命令 **/
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"===================== vundle =========================================
