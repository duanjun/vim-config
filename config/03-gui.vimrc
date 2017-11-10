"色彩主题
"colo onedark
"262626 background
colo molokai
"121212 background
"colo atom-dark
" 语法高亮
syntax enable
syntax on
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
set cursorcolumn
" 智能大小写判断
set ignorecase smartcase
" 永远显示状态栏
set laststatus=2
" 命令行区的高度
set cmdheight=1
"窗体字体大小
"set guifont=consolas:h16
"set guifont=Monaco:h16
set guifont=YaHei\ Consolas\ Hybrid:h19
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

 " statusline start {{
set statusline=[%{CurDir()}]\ [%F%m%r%h]\ \ %{&fenc!=''?&fenc:&enc}\ %=%l:%c\ %P\ of\ %L\ %{&paste=='nopaste'?'':'[p]'}

function! CurDir()
    let home = substitute(expand("$HOME"), "\\", "\\\\\\", "g")
    return substitute(getcwd(), home, "~", "g")
endfunction
