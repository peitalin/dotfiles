#!/bin/bash



function cd-dir {
    pushd "$@" 2>/dev/null && tree -dL 1 || echo "Directory doesn't exist..."
}

function jump-dir {
    dirs -v
    echo -e "Jump to which directory/line?"
    read input_var
    if [[ $input_var =~ ^-?[0-9]+$ ]]; then
        cd -"$input_var";
    else
        echo "Not a valid line number, staying put."
    fi
}

function strace {
    echo "Alias: dtrus =>"
    sudo dtruss "$@"
}

function seehtml {
    find . -name "$@" | xargs -I % cp % "$HOME/Public";
    cd "$HOME/Public";
    mv -f *.txt tempfile.html;
    open -a safari tempfile.html
    cd -1 > /dev/null
}

function extract() {    # Handy Extract Program
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}


man () {
    /usr/bin/man $@ || ($@ --help 2> /dev/null && $@ --help | $PAGER)
}



function dotfiles_git {

    cp $HOME/.bash_profile $HOME/Data/dotfiles
    cp $HOME/.bashrc $HOME/Data/dotfiles
    cp $HOME/.vimrc $HOME/Data/dotfiles
    cp $HOME/.zshrc $HOME/Data/dotfiles
    cp $HOME/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/oneNeon_lightline.vim  $HOME/Data/dotfiles
    cp $HOME/.ctags $HOME/Data/dotfiles
    cp $HOME/.Rprofile $HOME/Data/dotfiles
    cp -R $HOME/.ipython $HOME/Data/dotfiles
    cp -R $HOME/.matplotlib $HOME/Data/dotfiles
    cp $HOME/.eslintrc $HOME/Data/dotfiles
    cp -R $HOME/.kwm $HOME/Data/dotfiles
    cp $HOME/.oh-my-zsh/themes/bureau.zsh-theme $HOME/Data/dotfiles

    cd $HOME/Data/dotfiles

    git add .bash_profile --ignore-removal
    git add .bashrc --ignore-removal
    git add .vimrc --ignore-removal
    git add .zshrc --ignore-removal
    git add .ctags --ignore-removal
    git add .Rprofile --ignore-removal
    git add .ipython --ignore-removal
    git add .matplotlib --ignore-removal
    git add .eslintrc --ignore-removal
    git add .kwm/kwmrc --ignore-removal
    git add ./oneNeon_lightline.vim
    git add .oh-my-zsh/themes/bureau.zsh-theme
    git commit -m "Backup dotfiles"
    git push -u origin master
}



function mvps_hosts {
    cd /etc
    sudo wget "http://winhelp2002.mvps.org/hosts.txt"
    sudo mv /etc/hosts /etc/hosts_backup
    sudo mv /etc/hosts.txt /etc/hosts
}

if [ -f ~/.bashID ]; then
    source ~/.bashID
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

