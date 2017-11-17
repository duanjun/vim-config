"short-cut"

" NERDTree快捷键
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>
"打开浏览器快捷键"
nmap <silent> <Leader>c :silent !open -a /Applications/Google\ Chrome.app file://%:p&<CR>:redraw!<CR>

" 快速编辑.vimrc
nmap <leader>v  :e! $VIMHOME/vimrc<cr>
nmap <leader>v1 :e! $VIMHOME/config/01-loader.vimrc<cr>
nmap <leader>v2 :e! $VIMHOME/config/02-basic.vimrc<cr>
nmap <leader>v3 :e! $VIMHOME/config/03-gui.vimrc<cr>
nmap <leader>v4 :e! $VIMHOME/config/04-lang.vimrc<cr>
nmap <leader>v5 :e! $VIMHOME/config/05-autocmd.vimrc<cr>
nmap <leader>v6 :e! $VIMHOME/config/06-plugin.vimrc<cr>
nmap <leader>v7 :e! $VIMHOME/config/07-map.vimrc<cr>
nmap <leader>tern :e! $HOME/.tern-config<cr>


"nmap <leader>r  :! node --harmony %<cr>
"nmap <leader>r  :AsyncRun babel-node %<cr>
nmap <leader>r  :AsyncRun ts-node %<cr>
"nmap <leader>l  :! lebab % -o % <cr>
"babel
nmap <silent><leader>b :Babel vertical<cr>
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


" 使用 gP 来粘贴最近一次 yank 的文字
nmap gp "0p
nmap gP "0P

"选中状态下ctrl+c复制
vnoremap <C-c> "+y
map <C-v> "+p
nmap <C-a> ggVG
vmap <C-c> :w !pbcopy<CR><CR>
nmap <C-v> :r !pbpaste<CR><CR>

" 切换到 shell
map <silent> <Leader>sh :sh<CR>

" 命令模式下方便移动光标
if (!has ("gui_win32"))
  cmap <C-A> <Home>
  cmap <C-E> <End>
endif

" 切换粘贴模式
nmap <silent> <F6> :set invpaste<CR>

" 切换行号
"nmap <silent> <F5> :set invnu<CR>
"nmap <silent> <F5> :SyntasticCheck<cr>
" <f5> 编译和运行C
"map <f5> :call CompileRunGcc()<cr>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

"< F5> 编译和运行C++
"map <f5> :call CompileRunGpp()<cr>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

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

" Prevent jump out from current buffer
nnoremap <silent> <c-k> :call JumpInFile("\<c-i>", "\<c-o>")<cr>
nnoremap <silent> <c-j> :call JumpInFile("\<c-o>", "\<c-i>")<cr>


" 语法错误提示上一个下一个切换
nnoremap en :lnext<cr>
nnoremap ep :lprevious<cr>


nnoremap <c-t> :FZF <cr>

"cmap w!! w !sudo sh -c "cat > %" <CR>
nmap <silent> <C-s> :w !sudo tee > /dev/null % <CR>

"nerdtree bookmark
nmap <silent> <Leader>nb :Bookmark <cr>

"vim-rooter
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['.git/']

"terminal
tnoremap <ESC><ESC> <C-\><C-N>
nnoremap <c-j> :term ++rows=15<cr>
