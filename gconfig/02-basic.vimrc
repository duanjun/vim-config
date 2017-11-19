
"键盘处理设置leader
let mapleader=","
let g:mapleader=","


"设置history 记住多少行
set history=100

"相关目录设置
set dir=$VIMTEMP
set backup
set colorcolumn=120 "显示right margin, 7.3+
set undodir=$HOME/.vim/undodir
set backupdir=$HOME/.vim/vimbackup  "设置集中备份


"自动保存撤销历史到撤销文件。读入文件到缓冲区时，自动恢复撤销历史
set undofile
"文件有修改自动读取
set autoread
set autowrite

"折叠配置
set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠
set foldmethod=indent " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码
