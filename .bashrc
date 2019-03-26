

### PATHS
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"   # Rust
export PATH="/usr/local/Cellar:$PATH"  # Cellar
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$PATH:/Users/peitalin/.dat/releases/dat-13.11.5-macos-x64"
export CC="/usr/bin/clang"

export NODE_PATH="/usr/local/lib/node_modules"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export CARGO_HOME="$HOME/.cargo"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export SHELL="/bin/zsh"
# export PYTHONPATH="/usr/local/lib/python3.7/site-packages"

######### Environment #######
export LANG=en_US.UTF-8
export HISTTIMEFORMAT='%H:%M:%S  ' # time to history
export GREP_OPTIONS='--color=auto'

####  ALIASES  ###########
## File nav
alias ls='ls -G'
alias cd='cd-dir '
alias bk='popd > /dev/null '
alias b='cd -1 > /dev/null'
alias f='cd +0 > /dev/null'
alias jj='jump-dir'
alias hh='hist-commands'
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias sb="sublime"
alias sudo="sudo "
alias pgrep='pgrep -f'
alias pkill='pkill -f'
alias whereami='echo $HOST'
alias cat='ccat'

###### ALIAS VIM TO NEOVIM
alias vim='nvim'
alias v='nvim'
alias cim='nvim'

### directory shortcuts
alias drop="cd ~/Dropbox"
alias down="cd ~/Downloads"
alias torrents="cd ~/Downloads/Torrents"
alias gis.d="cd ~/Dropbox/GIS"

alias cellar.d="cd /usr/local/Cellar/"
alias music.d="cd ~/Music/Music\ Neue"
alias passwds='vim $HOME/Dropbox/usr.txt'


####  System  ################
alias bashrc="vim ~/.bashrc"
alias bashid="vim ~/.bashID"
alias vimrc="vim ~/.vimrc"
alias snippetsrc="vim ~/.vim/plugged/vim-snippets/UltiSnips"
alias bashp="vim ~/.bash_profile"
alias zshrc="vim ~/.zshrc"
alias chunkwmrc="vim ~/.chunkwmrc"
alias eslintrc="vim ~/.eslintrc"


#### Terminal utilities
alias tree="tree -CQN"
alias safari='open -a safari '
alias dxdiag="sw_vers; system_profiler SPHardwareDataType | head -n 15; echo ""; system_profiler SPDisplaysDataType"
alias screenfetch="screenfetch-dev 2> /dev/null"
alias ip="curl -s http://checkip.amazonaws.com"

####### GIT
alias gb="git branch"
alias gc="git checkout"

###### Python configs
alias ipy="ipython3 -i --IPSompleter.greedy=True --no-banner"
alias ipy.init="vim ~/.ipython/profile_default/ipython_config.py"
alias pip_update="python3 $HOME/Data/update-pip-packages/update-pip.py"
alias matplotlibrc="vim ~/.matplotlib/matplotlibrc"
alias pypackages="cd /usr/local/lib/python3.6/site-packages/"

##### Haskell
alias ghcirc="vim ~/.ghc/ghci.conf"

##### R configs
function R_interactive_script {
    { cat "$@"; cat; } | R --interactive --no-save --quiet
}
alias iR=R_interactive_script
alias R="R --no-save --quiet"
alias Rprofile="vim $HOME/.Rprofile"

# JS directories
alias dev.d="cd ~/Downloads/Torrents/Dev"
alias go.d="cd ~/Downloads/Torrents/Dev/go"
alias rust.d="cd ~/Downloads/Torrents/Dev/rust"
alias py.d="cd ~/Downloads/Torrents/Dev/py"
alias js.d="cd ~/Downloads/Torrents/Dev/js"
alias react.d="cd ~/Downloads/Torrents/Dev/react"
alias torrents.d="cd ~/Downloads/Torrents"

# alias vim as vim
alias vi='vim'
set editor='/usr/local/bin/vim'

# chunkwm window manager
alias cwmrestart="brew services restart chunkwm"
alias cwmstop="brew services stop chunkwm"
alias cwmstart="brew services start chunkwm"

# Rust
source $HOME/.cargo/env

#### Startup Message
# toilet -f mono9 --gay l:.
alias ddate="echo -e ' ' `date '+%a %d %b'`"
ddate
# cal


