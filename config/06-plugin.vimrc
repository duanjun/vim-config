"emmet
"默认key 为ctrl+y ，还需要按，
let g:user_emmet_install_global = 0
let g:user_emmet_mode='i'
autocmd FileType html,css EmmetInstall

" NERDTree Ignore
let NERDTreeWinPos='right' "NerdTree窗口显示在右边
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeStatusline='   '
let NERDTreeShowHidden=1
let NERDTreeIgnore= ['\.git$', '\.DS_Store', '\.vscode']

"设置NERDTree子窗口宽度
let NERDTreeWinSize=40
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0


"ctrp start {{
let g:ctrlp_regexp = 1
let g:ctrlp_cmd = 'CtrlPMixed'
"let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_max_files = 500
set wildignore+='*/tmp/*,*.so,*.swp,*.zip'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '_output$|_publish$|weike$|\.git$',
    \ 'file': 'exe|so|dll|zip|rar|tar|png|jpg|ico|swp$',
    \ }

" The Silver Searcher
if executable('ag')
" Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"ctrp end }}

function! Search(string) abort
  let saved_shellpipe = &shellpipe
  let &shellpipe = '>'
  try
    execute 'Ag!' shellescape(a:string, 1)
  finally
    let &shellpipe = saved_shellpipe
  endtry
endfunction
nnoremap <C-F> :call Search("")<left><left>


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

"语法检查另外一个插件"
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_sign_column_always = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '-'
let g:ale_set_highlights = 1
let g:ale_lint_on_save=0
let g:ale_linters = {'jsx': ['stylelint', 'eslint'], 'js': ['eslint']}
let g:ale_linters = {'js': ['eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}
"nmap <Leader>s :ALEToggle<CR>

"自动提示"
let g:ycm_min_num_of_chars_for_completion = 2
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_disable_for_files_larger_than_kb=300
let g:ycm_show_diagnostics_ui = 0
"设置关健字触发补全
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.', ' ', '(', '[', '&'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_use_ultisnips_completer = 0

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


set completeopt-=preview

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"



" vim_json option
let g:vim_json_syntax_conceal = 0

let g:jsx_pragma_required = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:jsx_ext_required = 0


"ctrl+n切换相对行号还是绝对行号
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set nonumber relativenumber
  endif
endfunc

nnoremap <silent> <C-n> :call NumberToggle()<cr>
nnoremap <F9> :silent make<CR>:redraw!<CR>

autocmd QuickFixCmdPost [^l]* nested botright cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"start plugin"
if has("nvim")
    set viminfo='100,n$HOME/.vim/nvimInfo/info/viminfo'
else
    set viminfo='100,n$HOME/.vim/vimInfo/viminfo'
endif


"matchup
let g:matchup_matchparen_status_offscreen = 0

"vim-prettier
" max line length that prettier will wrap on
let g:prettier#config#print_width = 120
" number of spaces per indentation level
let g:prettier#config#tab_width = 4
" use tabs over spaces
let g:prettier#config#use_tabs = 'false'
" print semicolons
let g:prettier#config#semi = 'true'
" single quotes over double quotes
let g:prettier#config#single_quote = 'true'
" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false'
" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'true'
" none|es5|all
let g:prettier#config#trailing_comma = 'none'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown
let g:prettier#config#parser = 'flow'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#guess = 0
let g:deoplete#sources#ternjs#filetypes = ['javascript', 'jsx', 'javascript.jsx', 'vue']

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent", "--no-port-file"]
