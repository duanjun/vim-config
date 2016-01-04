"zencoding配置{{
let g:user_emmet_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}
let g:user_emmet_expandabbr_key = '<c-j>'
let g:use_emmet_complete_tag = 1
"zencoding end}}

" NERDTree Ignore
let NERDTreeWinPos='right' "NerdTree窗口显示在右边

"设置NERDTree子窗口宽度
let NERDTreeWinSize=40
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0

" statuline end}}


"ctrp start {{
let g:ctrlp_regexp = 1
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_max_files = 500
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](_tmp|doc|Windows|System32|ie-legacy).*',
    \ 'file': '\v\.(exe|so|dll|zip|rar|tar|png|jpg|ico|swp)$',
    \ }

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
if exists('g:ctrlp_user_command')
    unlet g:ctrlp_user_command
endif
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

"ctrp end }}


" {{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Ctrl + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示

if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction
    "映射 Ctrl+Enter 切换全屏vim
    map <c-enter> <esc>:call ToggleFullScreen()<cr>

    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd VimResized * call libcallnr(g:MyVimLib, 'InitVim', 0)
    ""autocmd GUIEnter * simalt ~x
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    autocmd GUIEnter * call ToggleFullScreen()

    let g:VimAlpha = 240
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', 220)

    "增加Vim窗体的不透明度
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
endif
" }}


"/*功能函数 {{*/"
" 打开文件时自动跳转到最后输入的位置
function! JumpToLatest()
  if line("'\"") > 1 && line("'\"") <= line("$")
    exe "normal! g`\""
  endif
endfunction

" 查找文字
function! SearchWord()
    let word = input("search:", expand("<cword>"))
    if word[0] == "/" && word[len(word)-1] == "/"
        execute "vimgrep ".word." **"
    else
        execute "vimgrep /\\<".word."\\>/gj **"
    endif
    copen
endfunction

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction

" Prevent jumps out of current buffer
" From: ib.
" @see http://stackoverflow.com/questions/7066456/vim-how-to-prevent-jumps-out-of-current-buffer
function! JumpInFile(back, forw)
    let [n, i] = [bufnr('%'), 1]
    let p = [n] + getpos('.')[1:]
    sil! exe 'norm!1' . a:forw
    while 1
        let p1 = [bufnr('%')] + getpos('.')[1:]
        if n == p1[0] | break | endif
        if p == p1
            silent! exe 'norm!' . (i-1) . a:back
            break
        endif
        let [p, i] = [p1, i+1]
        silent! exe 'norm!1' . a:forw
    endwhile
endfunction
"/*功能函数 End}}/"

let g:config_Beautifier = {
\   'jsx' : {
\       'e4x': 'true',
\       'indent_style': 'space',
\       'indent_size': 4
\   },
\   'js': {
\       'e4x': 'true',
\       'path': '~/.vim/bundle/vundle/js-beautify/js/lib/beautify.js',
\       'indent_style': 'space',
\       'indent_size': '4',
\       'bin': 'node',
\       'jslint_happy': 'true',
\       'space_before_conditional': 'true'
\   },
\   'html': {
\       'brace_style': 'expand',
\       'preserve_newlines': 'true',
\       'path': '~/vim/bundle/vundle/js-beautify/js/lib/beautify-html.js',
\       'indent_inner_html': 'true',
\       'indent_style': 'space',
\       'indent_size': '4',
\       'max_char': '78'
\   },
\   'css': {
\       'path': '~/vim/bundle/vundle/js-beautify/js/lib/beautify-css.js',
\       'indent_style': 'space',
\       'indent_size': '4'
\   }
\}

" indentline 插件用的
let g:indentLine_char = '┆'

let g:tern_show_signature_in_pum = 1


" 语法检查插件
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <silent> <F5> :call ToggleErrors()<cr>
"let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_eslint_exec = 'eslint'
"let g:syntastic_html_checkers=['']
let syntastic_enable_signs = 0
let g:syntastic_disabled_filetypes = ['html']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'

let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" 比较喜欢用tab来选择补全...
function! MyTabFunction ()
    let line = getline('.')
    let substr = strpart(line, -1, col('.')+1)
    let substr = matchstr(substr, "[^ \t]*$")
    if strlen(substr) == 0
        return "\<tab>"
    endif
    return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <silent><tab> <c-r>=MyTabFunction()<cr>

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"let g:ycm_use_ultisnips_completer = 0

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}

" To disable the highlighting put the line
let g:JSLintHighlightErrorLine = 0

" 恢复session
let g:session_directory = "~/.vim/sessionbackup"
let g:session_autoload = "yes"
let g:session_autosave = "yes"
let g:session_command_aliases = 1
