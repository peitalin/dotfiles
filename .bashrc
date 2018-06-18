


### PATHS

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Python/3.5/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/Cellar:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export GOPATH="$HOME/go"

export SHELL="/bin/zsh"
# export TERM="xterm-256color-italic"
# export TERM="xterm-256color"
export LANG=en_US.UTF-8

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

### directory shortcuts
alias drop="cd ~/Dropbox"
alias down="cd ~/Downloads"
alias torrents="cd ~/Downloads/Torrents"
alias gis.d="cd ~/Dropbox/GIS"

alias cellar="cd /usr/local/Cellar/"
alias music.d="cd ~/Music/Music\ Neue"
alias py.d="cd ~/Dropbox/Lang/py"
alias R.d="cd ~/Dropbox/Lang/R"
alias rust.d="cd ~/Dropbox/Lang/rust"
alias passwds='vim $HOME/Dropbox/usr.txt'


####  System  ################
alias bashrc="vim ~/.bashrc"
alias bashid="vim ~/.bashID"
alias vimrc="vim ~/.vimrc"
alias snippetsrc="vim ~/.vim/plugged/vim-snippets/UltiSnips"
alias bashp="vim ~/.bash_profile"
alias zshrc="vim ~/.zshrc"
alias kwmrc="vim ~/.kwm/kwmrc"
alias eslintrc="vim ~/.eslintrc"


#### Terminal utilities
alias tree="tree -CQN"
alias safari='open -a safari '
alias firefox='open -a FirefoxDeveloperEdition'
alias chromium='open -a chromium'
alias dxdiag="sw_vers; system_profiler SPHardwareDataType | head -n 15; echo ""; system_profiler SPDisplaysDataType"
alias screenfetch="screenfetch-dev 2> /dev/null"
alias ip="curl -s http://checkip.amazonaws.com"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
export HISTTIMEFORMAT='%H:%M:%S  ' # time to history
export GREP_OPTIONS='--color=auto'

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


export BASE_DIR="~/Dropbox/gtrends-beta"
export GMAIL_USER='dgtesting12@gmail.com'
function test_gtrends {
    echo "python3 ~/Dropbox/gtrends-beta/google_trends/trends.py \ \r
        --username $GMAIL_USER  \ \r
        --password justfortesting! \ \r
        --keyword "Tesla" \ \r
        --start-date 2012-03 --end-date 2012-06\r"
}


# JS directories
alias react.d="cd ~/Downloads/Torrents/react"
alias hask.d="cd ~/Dropbox/Archive/Lang/Haskell/"
alias go.d="cd ~/Dropbox/Archive/Lang/Go"
alias rust.d="cd ~/Dropbox/Archive/Lang/Rust"
alias lang.d="cd ~/Dropbox/Archive/Lang/"
alias g1.d="cd ~/Dropbox/GenesysOne/"
alias ob1.d="cd ~/Downloads/Torrents/react/ob1"

# alias vim as vim
alias vi='vim'
set editor='/usr/local/bin/vim'

# kwm window manager
alias kwmrestart="brew services restart kwm"
alias kwmstop="brew services stop kwm"
alias kwmstart="brew services start kwm"

# Rust
source $HOME/.cargo/env

#### Startup Message
# toilet -f mono9 --gay l:.
alias ddate="echo -e ' ' `date '+%a %d %b'`"
ddate
# cal

# # added by travis gem
# [ -f /Users/peitalin/.travis/travis.sh ] && source /Users/peitalin/.travis/travis.sh
