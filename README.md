
## Usage

### Installation and Requisites:

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to your home directory if your like.

3. copy files to your home directory:

        git clone git://github.com/duanjun/vundle-vimfiles.git ～/vundle-vimfiles

4. make a symbolic link `.vim` to `vundle-vimfiles` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s vundle-vimfiles ~/.vim

5. link the vimrc to

        ln -s ~/.vim/vimrc ~/.vimrc

6. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s ~/.vim/gvimrc ~/.gvimrc

7. Setup [Vundle](https://github.com/gmarik/vundle)

        git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

8. if you use Powerline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline), it looks pretty nice.

9. you may need to install `ack` or `silver searcher` first if you use `ack.vim`.

### Install bundles:

Launch `vim`, run `:BundleInstall`  (or `vim +BundleInstall +qall` for CLI lovers)

### Update bundles:

Launch `vim`, run `:BundleInstall!`
