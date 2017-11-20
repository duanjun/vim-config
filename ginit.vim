if has("unix")
    let $VIMHOME="$HOME/.vim"
    let $VIMTEMP="/tmp/oni"
else
    let $VIMHOME="$VIM/vimfiles"
    let $VIMTEMP=$TEMP
endif

for rc in split(globpath($VIMHOME, 'gconfig/*.vimrc'), "\n")
    exe 'source ' . rc
endfor
