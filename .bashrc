

### PATHS
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/Library/Python/3.4/bin:$PATH"
export PATH="~/.local/bin:$PATH"
# export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig"
# export PATH="$HOME/.cabal/bin:$PATH"
# export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/local/Cellar:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"
# export PYTHONPATH="/usr/local/lib/python3.5/site-packages"

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
alias rsync="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias pgrep='pgrep -f'
alias pkill='pkill -f'


### directory shortcuts
alias drop="cd ~/Dropbox"
alias down="cd ~/Downloads"
alias cellar="cd /usr/local/Cellar/"
alias music.d="cd ~/Music/Music\ Neue"
alias py.d="cd ~/Dropbox/Lang/py"
alias R.d="cd ~/Dropbox/Lang/R"
alias C.d="cd ~/Dropbox/Lang/C"
alias hask.d="cd ~/Dropbox/Lang/Haskell"
alias rust.d="cd ~/Dropbox/Lang/Rust"
alias node.d="cd ~/Dropbox/Lang/nodejs"
alias gt.d='cd $HOME/Dropbox/gtrends-beta'
alias passwds='vim $HOME/Dropbox/usr.txt'
alias nasdaq='cd $HOME/Data/IPO/NASDAQ'
alias globalgames='cd $HOME/Data/IPO/GlobalGames'

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
alias pypackages="cd /usr/local/lib/python3.5/site-packages/"

alias inode="node-help"

##### Haskell
alias ghcirc="vim ~/.ghc/ghci.conf"

##### Javascript
function yarnbabel {
    echo "yarn add --dev babel-cli babel-core babel-preset-latest babel-preset-stage-3";
    yarn add --dev babel-cli babel-core babel-preset-latest babel-preset-stage-3;
    echo "yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator";
    yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator ;
}

alias node7="node --harmony"

##### ReactJS
function yarnreact {
    echo "yarn add react react-dom";
    yarn add react react-dom;
    echo "yarn add --dev webpack webpack-dev-server webpack-validator";
    yarn add --dev webpack webpack-dev-server webpack-validator;
    echo "yarn add --dev babel-core babel-loader babel-preset-latest babel-preset-react babel-preset-stage-3";
    yarn add --dev babel-core babel-loader babel-preset-latest babel-preset-react babel-preset-stage-3;
    echo "yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator babel-plugin-transform-react-jsx-img-import";
    yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator babel-plugin-transform-react-jsx-img-import;
    echo "yarn add --dev file-loader url-loader style-loader css-loader node-sass sass-loader html-loader resolve-url-loader";
    yarn add --dev file-loader url-loader style-loader css-loader node-sass sass-loader html-loader resolve-url-loader;

    echo "INSTALLING react-hot-loader v3."
    echo "yarn add --dev react-hot-loader@next"
    yarn add --dev react-hot-loader@next

}

function yarnserver {
	echo "yarn add express express-graphql graphql"
	yarn add express express-graphql graphql
}

function yarnredux {
    echo "yarn add react-router@next redux react-redux node-uuid";
    yarn add react-router@next redux react-redux node-uuid;
}

function yarnreacttests {
    echo "yarn add karma mocha";
    yarn add karma mocha ;
}



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
alias listing.d="cd ~/Downloads/Torrents/listingrumors"
alias blood.d="cd ~/Downloads/Torrents/bloodpact"
alias react.d="cd ~/Downloads/Torrents/react"

# kwm window manager
alias kwmrestart="brew services stop kwm; brew services start kwm"
alias kwmstop="brew services stop kwm"
alias kwmstart="brew services start kwm"



#### Startup Message
# toilet -f mono9 --gay l:.
alias ddate="echo -e ' ' `date '+%a %d %b'`"
ddate
# cal
