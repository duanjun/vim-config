"色彩主题

"one dark
colo onedark
hi StatusLine   guifg=#abb2bf guibg=#2c323c
hi StatusLineNC guifg=#abb2bf guibg=#2c323c
hi VertSplit guifg=#3E4452 guibg=none
set fillchars+=vert:│

"molokai
"colo molokai

" 缩进设置
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent " 开启新行时使用智能自动缩进
set nu

" 状态栏显示键入的命令
set showcmd
" 高亮当前行
set cursorline
" 高亮当前列
"set cursorcolumn
" 智能大小写判断
set ignorecase smartcase

" 永远显示状态栏
set laststatus=2
" 命令行区的高度
set cmdheight=1

set nowrap

"从下面分window
set splitbelow
"从右边分window
set splitright
"statusline start
set statusline=[%{CurDir()}]\ [%F%m%r%h]\ \ %{&fenc!=''?&fenc:&enc}\ %y\%=%l:%c\ %P\ of\ %L\ %M\ buffer:%n\ \ %{gitbranch#name()}\ \%{&paste=='nopaste'?'':'[p]'}
"neo vim开启预览
set inccommand=split

function! CurDir()
    let home = substitute(expand("$HOME"), "\\", "\\\\\\", "g")
    return substitute(getcwd(), home, "~", "g")
endfunction
