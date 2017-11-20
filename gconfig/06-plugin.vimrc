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
let NERDTreeIgnore= ['\.git', '\.DS_Store', '\.vscode']

"设置NERDTree子窗口宽度
let NERDTreeWinSize=40
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0

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

set viminfo='100,n$HOME/.vim/gnvimInfo/info/viminfo'

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
