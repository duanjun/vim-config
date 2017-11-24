syntax enable
syntax on

"色彩主题
colo onedark
"262626 background

hi StatusLine   guifg=#abb2bf guibg=#2c323c
hi StatusLineNC guifg=#abb2bf guibg=#2c323c
hi VertSplit guifg=#3E4452

hi StatusLine  ctermfg=145 ctermbg=236
hi StatusLineNC ctermfg=59 ctermbg=236

"colo molokai
"set t_Co=256
"121212 background
"
" 语法高亮

" 右下角显示标尺

set ruler
" 显示当前模式
set showmode
" 高亮括号对
set showmatch
set matchtime=0
" 显示行号
set nu
" 自动缩进
set autoindent
" 缩进设置
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent " 开启新行时使用智能自动缩进
" 高亮搜索
set hlsearch
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
"窗体字体大小
"set guifont=consolas:h16
"set guifont=Monaco:h16
"set guifont=YaHei\ Consolas\ Hybrid:h19
"set transparency=10
"缩放窗口时不折行显示
set nowrap
set list "显示不可见字符 默认的太不好看了
set listchars=tab:\:\ ,trail:~,extends:>,precedes:<,nbsp:\.
set guioptions-=m " 隐藏菜单栏
set guioptions-=T " 隐藏工具栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条
set showtabline=0 " 隐藏Tab栏
"从下面分window
set splitbelow
"从右边分window
set splitright
 " statusline start {{
set statusline=[%{CurDir()}]\ [%F%m%r%h]\ \ %{&fenc!=''?&fenc:&enc}\ %y\%=%l:%c\ %P\ of\ %L\ %M\ buffer:%n\ \ %{gitbranch#name()}\ \%{&paste=='nopaste'?'':'[p]'}

function! CurDir()
    let home = substitute(expand("$HOME"), "\\", "\\\\\\", "g")
    return substitute(getcwd(), home, "~", "g")
endfunction

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[3 q"
let &t_EI = "\<esc>[2 q"
