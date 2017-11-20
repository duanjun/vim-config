if has("unix")
    let $VIMHOME="$HOME/.vim"
    let $VIMTEMP="$HOME/tmp/vim"
else
    let $VIMHOME="$VIM/vimfiles"
    let $VIMTEMP=$TEMP
endif

for rc in split(globpath($VIMHOME, 'config/*.vimrc'), "\n")
    exe 'source ' . rc
endfor
