autocmd FileType * set guifont=YaHei\ Consolas\ Hybrid:h18
autocmd WinEnter * set guifont=YaHei\ Consolas\ Hybrid:h18

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
"au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.dwt set filetype=html
au BufNewFile,BufRead *.as setf actionscript

" 自动补全设置
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType python     set completefunc=pythoncomplete#Complete
autocmd FileType c          set omnifunc=ccomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS

" vimrc编辑后自动重新加载
autocmd! BufWritePost 01-vundle.vimrc source $VIMHOME/01-vundle.vimrc
autocmd! BufWritePost 02-basic.vimrc source $VIMHOME/02-basic.vimrc
autocmd! BufWritePost 03-gui.vimrc source $VIMHOME/03-gui.vimrc
autocmd! BufWritePost 04-lang.vimrc source $VIMHOME/04-lang.vimrc
autocmd! BufWritePost 05-autocmd.vimrc source $VIMHOME/05-autocmd.vimrc
autocmd! BufWritePost 06-plugin.vimrc source $VIMHOME/06-plugin.vimrc
autocmd! BufWritePost 07-map.vimrc source $VIMHOME/07-map.vimrc

"按esc可以直接从中文切换回英文
set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0
