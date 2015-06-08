" 关闭兼容模式
set nocompatible

" 缩写
iab xdate <c-r>=strftime("%Y-%m-%y")<cr>
iab xdate1 <c-r>=strftime("%Y-%m-%y %H:%M:%S")<cr>
iab xname duanjun

" 模式行
set modeline
"set modelines=2

" 允许所有模式的虚拟编辑
set ve=all

"键盘处理设置leader
let mapleader=","
let g:mapleader=","

" 光标上下两侧最少保留的屏幕行数
set scrolloff=7
" 启用命令行补全
set wildmenu

" 运行宏时不重画窗口
set lazyredraw

" 启动时不显示介绍信息
set shortmess+=I

" 设置左右移动光标的键的回绕
set whichwrap+=<,>,h,l
" 禁用错误响铃
set noerrorbells
set novisualbell
set vb t_vb=

" 设置匹配符号组
set matchpairs+=<:>
set matchpairs+==:;
set matchpairs+=":"
set matchpairs+=':'
"设置history 记住多少行
set history=700
" 开启魔法匹配
set magic
"允许文件未保存的时候切换缓冲区
set hidden
" 退格键行为
set backspace=indent,eol,start

" 打开文件类型支持
filetype plugin indent on
" 递归向上查找 tags
set tags=tags

set ambiwidth=double
set mouse=
" 即时搜索
set incsearch

"搜索的时候忽略大小写
set ignorecase

"去掉bomb头
set nobomb

" ignore these files while expanding wild chars
set wildignore+=.svn,CVS,.git
set wildignore+=*.o,*.a,*.class,*.mo,*.la,*.so,*.lo,*.la,*.obj,*.pyc
set wildignore+=*.exe,*.zip,*.jpg,*.png,*.gif,*.jpeg

"相关目录设置
set dir=$VIMTEMP
set backup
set colorcolumn=80 "显示right margin, 7.3+
set undodir=$HOME/.vim/undodir
set backupdir=$HOME/.vim/vimbackup  "设置集中备份

"set foldmethod=indent

"自动保存撤销历史到撤销文件。读入文件到缓冲区时，自动恢复撤销历史
set undofile
"文件有修改自动读取
set autoread
set autowrite

"智能提示
let g:acp_completeOption = '.,w,b,u,t,i,k'
set completeopt=preview,menu
set completeopt=menuone,longest
set pumheight=10

"disable doc preview in omnicomplete
set cot-=preview
