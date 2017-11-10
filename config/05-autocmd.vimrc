autocmd FileType * set guifont=YaHei\ Consolas\ Hybrid:h19
autocmd WinEnter * set guifont=YaHei\ Consolas\ Hybrid:h19

" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent

" 打开文件时跳到上次编辑的位置
autocmd BufReadPost * call JumpToLatest()
autocmd BufReadPost * call JumpToLatest()


" 保存文件时自动去除多余空白 InsertLeave
autocmd BufWritePre * call RemoveTrailingWhitespace()

" 保存文件时自动去除多余空白 InsertLeave
autocmd BufWritePre * set fileencoding=utf-8 "vim当前编辑的文件在存储时的编码
autocmd BufWritePre * :retab

au BufRead,BufNewFile *.vm set filetype=html
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.js set fmr=/*,*/
"au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.ts  setlocal filetype=typescript
"au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.dwt set filetype=html
au BufNewFile,BufRead *.as setf actionscript


" vimrc编辑后自动重新加载
autocmd! BufWritePost 01-vundle.vimrc source $VIMHOME/config/01-loader.vimrc
autocmd! BufWritePost 02-basic.vimrc source $VIMHOME/config/02-basic.vimrc
autocmd! BufWritePost 03-gui.vimrc source $VIMHOME/config/03-gui.vimrc
autocmd! BufWritePost 04-lang.vimrc source $VIMHOME/config/04-lang.vimrc
autocmd! BufWritePost 05-autocmd.vimrc source $VIMHOME/config/05-autocmd.vimrc
autocmd! BufWritePost 06-plugin.vimrc source $VIMHOME/config/06-plugin.vimrc
autocmd! BufWritePost 07-map.vimrc source $VIMHOME/config/07-map.vimrc



"按esc可以直接从中文切换回英文
set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0
