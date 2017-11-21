"short-cut"

" NERDTree快捷键
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>
"打开浏览器快捷键"
nmap <silent> <Leader>c :silent !open -a /Applications/Google\ Chrome.app file://%:p&<CR>:redraw!<CR>

" 快速编辑.vimrc
"nmap <leader>v  :e! $VIMHOME/.vim/ginit.vim<cr>
nmap <leader>v  :e! $HOME/.oni/config.js<cr>
nmap <leader>v1 :e! $VIMHOME/gconfig/01-loader.vimrc<cr>
nmap <leader>v2 :e! $VIMHOME/gconfig/02-basic.vimrc<cr>
nmap <leader>v3 :e! $VIMHOME/gconfig/03-gui.vimrc<cr>
nmap <leader>v4 :e! $VIMHOME/gconfig/04-lang.vimrc<cr>
nmap <leader>v5 :e! $VIMHOME/gconfig/05-autocmd.vimrc<cr>
nmap <leader>v6 :e! $VIMHOME/gconfig/06-plugin.vimrc<cr>
nmap <leader>v7 :e! $VIMHOME/gconfig/07-map.vimrc<cr>
nmap <leader>tern :e! $HOME/.tern-config<cr>


"nmap <leader>r  :! node --harmony %<cr>
"nmap <leader>r  :AsyncRun ts-node %<cr>
nmap <leader>r  :AsyncRun <right>
"new | r!somecommand
"nmap <leader>l  :! lebab % -o % <cr>


"nginx
nmap <silent><Leader>in :e /usr/local/etc/nginx/nginx.conf<CR>
nmap <silent><Leader>wn :e /Volumes/C/nginx-1.8.0/conf/nginx.conf<CR>
"host
nmap <silent><Leader>ih :e /etc/hosts<CR>
nmap <silent><Leader>wh :e /Volumes/C/Windows/System32/drivers/etc/hosts<CR>
"目录相关
nmap <silent><Leader>lc :cd %:p:h<CR>


" 使用上下来调节窗口大小
nmap <silent> <s-UP> <C-W>+:let t:flwwinlayout = winrestcmd()<CR>
nmap <silent> <s-DOWN> <C-W>-:let t:flwwinlayout = winrestcmd()<CR>
nmap <silent> <s-left> <C-W><:let t:flwwinlayout = winrestcmd()<CR>
nmap <silent> <s-right> <C-W>>:let t:flwwinlayout = winrestcmd()<CR>
nmap <silent> <s-v> :vnew<CR>
nmap <silent> <space> <C-W>=
nmap <silent> <UP> <C-W>k
nmap <silent> <DOWN> <C-W>j
nmap <silent> <LEFT> <C-W>h
nmap <silent> <RIGHT> <C-W>l


"选中状态下ctrl+c复制
vnoremap <C-c> "+y
map <C-v> "+p
nmap <C-a> ggVG


" ^L 刷新
nnoremap <silent><C-h> :nohlsearch<CR>


" F7/F8 切换下一条 quickfix
nmap <F7> :cprev<CR>
nmap <F8> :cnext<CR>

" 快速跳到下一个驼峰位置
nmap t` /[A-Z]<cr>

"用空格键来开关折叠
nnoremap <silent> <space> za

"缓冲区文件切换
nmap <silent> <tab> <esc>:bn<cr>
nmap <silent> <s-tab> <esc>:bp<cr>

autocmd FileType javascript noremap <buffer> <Leader>p :PrettierAsync<cr>
autocmd FileType json noremap <buffer> <Leader>p :PrettierAsync<cr>
autocmd FileType jsx noremap <buffer> <Leader>p :PrettierAsync<cr>
autocmd FileType css noremap <buffer>  <Leader>p :PrettierAsync<cr>
autocmd FileType typescript noremap <buffer> <Leader>p :PrettierAsync<cr>
autocmd FileType markdown noremap <buffer> <Leader>p :PrettierAsync<cr>
autocmd FileType html noremap <buffer> <Leader>p :PrettierAsync<cr>


" 语法错误提示上一个下一个切换
nnoremap en :lnext<cr>
nnoremap ep :lprevious<cr>


"cmap w!! w !sudo sh -c "cat > %" <CR>
nmap <silent> <C-s> :w !sudo tee > /dev/null % <CR>

"nerdtree bookmark
nmap <silent> <Leader>nb :Bookmark <cr>

"vim-rooter
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['.git/']

"terminal
tnoremap <ESC><ESC> <C-\><C-N>

command! -nargs=* St 15split | set nonu | terminal <args>
command! -nargs=* Vst vsplit | terminal <args>
nnoremap <silent> <c-j> :St <cr>

nnoremap <expr> <c-6> (empty(@#) ? ':bprev' : ':b#')."\<cr>"
