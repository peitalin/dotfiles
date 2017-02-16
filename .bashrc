
alias cat='ccat'

alias poke.d='cd ~/Downloads/Torrents/react/pokedex-react-master'


### PATHS
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Library/Python/3.4/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
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
alias pgrep='pgrep -f'
alias pkill='pkill -f'
alias whereami='echo $HOST'


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
    echo "yarn add --dev babel-cli babel-core babel-preset-latest ";
    yarn add --dev babel-cli babel-core babel-preset-latest ;
    echo "yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator";
    yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator ;
    echo yarn add --dev babel-plugin-transform-function-bind babel-plugin-transform-exponentiation-operator
    yarn add --dev babel-plugin-transform-function-bind babel-plugin-transform-exponentiation-operator
}

alias node7="node --harmony"


function yarntypescript {
    echo "yarn add --dev babel-core babel-loader babel-preset-latest "
    yarn add --dev babel-core babel-loader babel-preset-latest
    echo "yarn add --dev typescript awesome-typescript-loader ts-loader react react-dom babel-preset-react"
    yarn add --dev typescript awesome-typescript-loader ts-loader react react-dom babel-preset-react
    echo "yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator";
    yarn add --dev babel-plugin-transform-decorators-legacy babel-plugin-transform-async-to-generator ;
    echo yarn add --dev babel-plugin-transform-function-bind babel-plugin-transform-exponentiation-operator
    yarn add --dev babel-plugin-transform-function-bind babel-plugin-transform-exponentiation-operator

    echo "yarn add --dev @types/react @types/react-dom @types/node"
    yarn add --dev @types/react @types/react-dom @types/node
    touch tsconfig.json tslint.json
    mkdir dist
}


##### ReactJS
function yarnreact {
    echo "yarn add react react-dom";
    yarn add react react-dom;
    echo "yarn add --dev @types/react @types/react-dom"
    yarn add --dev @types/react @types/react-dom
    echo "yarn add --dev webpack@2.2 webpack-dev-server@2.2";
    yarn add --dev webpack@2.2 webpack-dev-server@2.2;
    echo "yarn add --dev babel-core babel-loader babel-preset-latest babel-preset-react";
    yarn add --dev babel-core babel-loader babel-preset-latest babel-preset-react;
    # echo "yarn add --dev babel-plugin-transform-async-to-generator babel-plugin-transform-react-jsx-img-import";
    # yarn add --dev babel-plugin-transform-async-to-generator babel-plugin-transform-react-jsx-img-import;
    echo "yarn add --dev file-loader url-loader style-loader css-loader node-sass sass-loader html-loader resolve-url-loader";
    yarn add --dev file-loader url-loader style-loader css-loader node-sass sass-loader html-loader resolve-url-loader;
    echo "yarn add --dev extract-text-webpack-plugin@beta "
    yarn add --dev extract-text-webpack-plugin@beta

    # echo "INSTALLING react-hot-loader v3."
    echo "yarn add --dev react-hot-loader@next"
    yarn add --dev react-hot-loader@next

}

function yarnserver {
    echo "yarn add express express-graphql graphql"
    yarn add express express-graphql graphql
}

function yarnapollo {
    echo "yarn add graphql-tag react-apollo apollo-client"
    yarn add graphql-tag react-apollo apollo-client
    echo yarn add --dev babel-preset-react-native
    yarn add --dev babel-preset-react-native
    # remove later when react-native dependency bug is fixed,
}

function yarnredux {
    echo "yarn add redux react-redux node-uuid";
    yarn add redux react-redux node-uuid;
}

function yarnrouter {
    echo "yarn add react-router@next";
    yarn add react-router@next;

    mkdir ./node_modules/@types/react-router-v4/
    touch ./node_modules/@types/react-router-v4/index.d.ts
echo "/**
 * Custom typedef for React Router v4 (WIP).
 */

declare module 'react-router' {
  export type Action = 'PUSH' | 'REPLACE' | 'POP';

  export type Location = {
    pathname: string,
    search: string,
    hash: string,
    state?: any,
    key?: string,
  };


  export interface RouteProps {
    pattern: string;
    pathname: string;
    exactly: boolean;
    location: Location;
    params: Object;
  }

  export interface RouteRenderFn {
    (props: RouteProps): React.ReactNode | Promise<React.ReactNode>;
  }

  export interface RouteComponent extends React.ComponentClass<RouteProps> {
    props: RouteProps;
  }


  export type HistoryContext = {
    action: Action,
    location: Location,
    push: Function,
    replace: Function,
    go: Function,
    goBack: Function,
    goForward: Function,
    canGo?: Function,
    block: Function,
  }

  export type RouterContext = {
    createHref: () => {},
    transitionTo: () => {},
    replaceWtih: () => {},
    blockTransitions: () => {},
  };


  export interface LinkProps extends React.ClassAttributes<Link> {
    to: string | { pathname: string, query: string };
    replace?: boolean;
    activeStyle?: Object;
    activeClassName?: string;
    activeOnlyWhenExact?: boolean;
    isActive?: Function;
    children?: React.ReactChildren;
    style?: Object;
    className?: string;
    target?: string;
    onClick?: React.MouseEventHandler<any>;
  }

  export interface Link extends React.ComponentClass<LinkProps> {
    props: LinkProps;
  }

  export const Link: Link;


  export interface MatchProps extends React.ClassAttributes<Match> {
    pattern?: string;
    exactly?: boolean;
    location?: Object;
    children?: React.ReactChild;
    render?: RouteRenderFn;
    component?: React.ReactChild;
  }

  export interface Match extends React.ComponentClass<MatchProps> {
    props: MatchProps;
  }

  export const Match: Match;


  export interface MissProps extends React.ClassAttributes<Miss> {
    location?: Location;
    render?: RouteRenderFn;
    component?: React.ReactNode;
  }

  export interface Miss extends React.ComponentClass<MissProps> {
    props: MissProps;
  }

  export const Miss: Miss;


  export interface NavigationPromptProps extends React.ClassAttributes<NavigationPrompt> {
    when?: boolean;
    message: Function | string;
  }

  export interface NavigationPrompt extends React.ComponentClass<NavigationPromptProps> {
    props: NavigationPromptProps;
  }

  export const NavigationPrompt: NavigationPrompt;


  export interface RedirectProps extends React.ClassAttributes<Redirect> {
    to: string | Object;
    push?: boolean;
  }

  export interface Redirect extends React.ComponentClass<RedirectProps> {
    props: RedirectProps;
  }

  export const Redirect: Redirect;


  export interface BrowserRouterProps extends React.ClassAttributes<BrowserRouter> {
    basename?: string;
    forceRefresh?: boolean;
    getUserConfirmation?: Function;
    keyLength?: number;
    children?: React.ReactChildren;
  }

  export interface BrowserRouter extends React.ComponentClass<BrowserRouterProps> {
    props: BrowserRouterProps;
  }

  export const BrowserRouter: BrowserRouter;


  export interface HashRouterProps extends React.ClassAttributes<HashRouter> {
    basename?: string;
    getUserConfirmation?: Function;
    hashType?: string;
    children?: Function | React.ReactNode;
  }

  export interface HashRouter extends React.ComponentClass<HashRouterProps> {
    props: HashRouterProps;
  }

  export const HashRouter: HashRouter;


  export type ServerRouterContext = {
    getResult: Function,
  };

  export interface ServerRouterProps extends React.ClassAttributes<ServerRouter> {
    basename?: string;
    context: ServerRouterContext;
    location: string;
    children?: React.ReactNode;
  }

  export interface ServerRouter extends React.ComponentClass<ServerRouterProps> {
    props: ServerRouterProps;
  }

  export const ServerRouter: ServerRouter;


  export interface StaticRouterProps extends React.ClassAttributes<StaticRouter> {
    action: Object;
    blockTransitions?: Function;
    children?: React.ReactNode;
    createHref?: Function;
    location: Object | string;
    basename?: string;
    onPush: Function;
    onReplace: Function;
    stringifyQuery?: Function;
    parseQuery?: Function;
  }

  export interface StaticRouter extends React.ComponentClass<StaticRouterProps> {
    props: StaticRouterProps;
  }

  export const StaticRouter;

  export function createServerRenderContext(): ServerRouterContext;
}" > ./node_modules/@types/react-router-v4/index.d.ts
}


function yarntests {
    echo yarn add --dev jest ts-jest babel-jest react-test-renderer react-addons-test-utils enzyme
    yarn add --dev jest ts-jest babel-jest react-test-renderer enzyme
    echo yarn add --dev @types/react-test-renderer @types/enzyme
    yarn add --dev @types/jest @types/react-test-renderer @types/enzyme

    echo "Making mockfile directories..."
    mkdir -p ./src/__mocks__
    echo "module.exports = {};" > ./src/__mocks__/fileMock.js
    echo "module.exports = {};" > ./src/__mocks__/styleMock.js

    # setup jest test
    # https://github.com/akiran/react-slick/issues/93
    echo "window.matchMedia = window.matchMedia || function() {
    return {
        matches : false,
        addListener : function() {},
        removeListener: function() {}
    };
};" > ./jestSetup.js
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
alias blood.d="cd ~/Dropbox/bloodpact"
alias react.d="cd ~/Downloads/Torrents/react"

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
