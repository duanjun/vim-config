
" 保存文件时自动去除多余空白 InsertLeave
autocmd BufWritePre * call RemoveTrailingWhitespace()

" 保存文件时自动去除多余空白 InsertLeave
autocmd BufWritePre * set fileencoding=utf-8 "vim当前编辑的文件在存储时的编码
autocmd BufWritePre * :retab


" vimrc编辑后自动重新加载
autocmd! BufWritePost *.vimrc source $HOME/.vim/ginit.vim
