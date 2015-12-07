"short-cut"

map <space> /
"map <a-space> ?

" 打开文件历史菜单
map <silent><F2> :ls<cr>

" NERDTree快捷键
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>

"打开浏览器快捷键"
nmap <silent> <Leader>c :update<CR>:silent !open -a /Applications/Google\ Chrome.app file://%:p <CR>

" 快速编辑.vimrc
nmap <leader>v  :e! $VIMHOME/vimrc<cr>
nmap <leader>v1 :e! $VIMHOME/01-vundle.vimrc<cr>
nmap <leader>v2 :e! $VIMHOME/02-basic.vimrc<cr>
nmap <leader>v3 :e! $VIMHOME/03-gui.vimrc<cr>
nmap <leader>v4 :e! $VIMHOME/04-lang.vimrc<cr>
nmap <leader>v5 :e! $VIMHOME/05-autocmd.vimrc<cr>
nmap <leader>v6 :e! $VIMHOME/06-plugin.vimrc<cr>
nmap <leader>v7 :e! $VIMHOME/07-map.vimrc<cr>
nmap <leader>s :UltiSnipsEdit<cr>

nmap <leader>r  :! node %<cr>
"nginx
nmap <silent><Leader>in :e /usr/local/etc/nginx/nginx.conf<CR>
nmap <silent><Leader>wn :e /Volumes/C/nginx-1.8.0/conf/nginx.conf<CR>
"host
nmap <silent><Leader>ih :e /etc/hosts<CR>
nmap <silent><Leader>wh :e /Volumes/C/Windows/System32/drivers/etc/hosts<CR>
"目录相关
nmap <silent><Leader>lc :cd %:p:h<CR>
"nmap <silent><Leader>umu :cd /Users/duanjun/Documents/dj/umu_project<CR>
"nmap <silent><Leader>umu :cd /Users/duanjun/Documents/project/umuglobal/<CR>
nmap <silent><Leader>umu :cd /Users/duanjun/Documents/project/<CR>
nmap <silent><Leader>bd :cd /Users/duanjun/Documents/dj/baidu_project<CR>

autocmd VimEnter * cd /Users/duanjun/Documents/project/
autocmd VimEnter * NERDTree

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
nmap <C-s> :w<CR>
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
nmap <silent> <F5> :set invnu<CR>

" ^L 刷新
nnoremap <silent><C-h> :nohlsearch<CR>



" F7/F8 切换下一条 quickfix
nmap <F7> :cprev<CR>
nmap <F8> :cnext<CR>

" 更方便的 <Esc>
"map <silent> <esc><esc> :q<cr>

" 打开一个临时的缓冲区随便记东西
nmap <Leader>S :Scratch<cr>


" 快速跳到下一个驼峰位置
nmap t` /[A-Z]<cr>

"用空格键来开关折叠
nnoremap <silent> <space> za

"缓冲区文件切换
nmap <silent> <tab> <esc>:bn<cr>
nmap <silent> <s-tab> <esc>:bp<cr>


map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType dwt noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>




" Prevent jump out from current buffer
nnoremap <silent> <c-k> :call JumpInFile("\<c-i>", "\<c-o>")<cr>
nnoremap <silent> <c-j> :call JumpInFile("\<c-o>", "\<c-i>")<cr>


"fullgitive
map <silent> <leader>gs :Gstatus <cr>
map <silent> <leader>gd :Gdiff <cr>
map <silent> <leader>gc :Gcommit <cr>
map <silent> <leader>gb :Gblame  <cr>
map <silent> <leader>gl :Glog <cr>
map <silent> <leader>gp :Git push <cr>
map <silent> <leader>gw :Gwrite <cr>
