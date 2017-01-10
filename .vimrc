

""""""""""""" General ViM Settings """""""""
scriptencoding utf-8
syntax on
filetype plugin indent on
set hidden
set encoding=utf-8  " Use utf-8 encoding
set incsearch       " move while searching
set laststatus=2    " always show the status line
set report=0        " tell us when anything is changed via :...
set scrolloff=10    " Keep 10 lines (top/bottom) for scope
set showcmd         " show the command being typed
set showmatch       " show matching brackets
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
set softtabstop=0 noexpandtab
" set expandtab                     " Tabs insert 4 space characters
set virtualedit+=block            " Allow the cursor to go anywhere in visual block mode
set relativenumber                " Relative line numbers
set number                        " Line numbers [:set number!] to turn off
set numberwidth=5                 " We are good up to 99999 lines
set sidescrolloff=10              " Keep 5 lines at the size
set list                          " Show whitespace and tabs
set listchars=tab:\¦·,trail:·     " show tabs and trailing whitespace
set clipboard=unnamed             " copy and paste with *
set mouse=a                       " Scrollable term-vim
" set cursorcolumn
autocmd BufWritePre * %s/\s\+$//e " trim trailing whitespace
" autocmd FileType javascript,html setlocal shiftwidth=2 tabstop=2
autocmd FileType css,sass.css,scss.css setlocal shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.hbs setlocal ft=d

""""""""""""" END General ViM Settings """""""""""""""""




""""""""""""" Plug configs """""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'kshenoy/vim-signature'
Plug 'Lokaltog/vim-easymotion'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
" ctrlp root directories
let g:ctrlp_root_markers = ['package.json', 'webpack.config.js', 'README.md']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|jspm_packages|typings|target)|(\.(swp|ico|git|svn))$'
" default open in new tabs, instead of buffer
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'aereal/vim-colors-japanesque'
Plug 'roosta/vim-srcery'
Plug 'Wutzara/vim-materialtheme'
Plug 'altercation/solarized'


" Completion
Plug 'Valloric/YouCompleteMe', {
     \ 'build' : {
     \     'mac' : './install.sh --tern-completer',
     \     'unix' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
     \    }
     \ }
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt = 1

""" Python
Plug 'davidhalter/jedi-vim'

" Highlights the matching HTML tag when the cursor is positioned on a tag.
Plug 'Valloric/MatchTagAlways'
Plug 'othree/csscomplete.vim'
" plug 'cakebaker/scss-syntax.vim'
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.sass set filetype=sass.css

Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_typescript_checks = ['tslint']
nmap <C-c> :SyntasticCheck<CR>
nmap <C-x> :SyntasticReset<CR>

" " Haskell
" Plug 'eagletmt/neco-ghc'
" Plug 'eagletmt/ghcmod-vim'

" " Rust"
" Syntax highlighting
Plug 'rust-lang/rust.vim'

" Coffeescript
Plug 'kchmck/vim-coffee-script'

" Vim Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"


" Snippets/Macros for DOM tags
Plug 'mattn/emmet-vim'
" C-m is synonymous with 'enter', so will cause enter key to lag
let g:user_emmet_leader_key='<C-k>'
let g:user_emmet_settings = {'javascript': {'extends': 'jsx'}}

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
" Add Support css3 properties
Plug 'hail2u/vim-css3-syntax'
" Allow autoclose paired characters like [,] or (,),
Plug 'jiangmiao/auto-pairs'
" let g:AutoPairsFlyMode = 0
" let g:AutoPairsShortcutFastWrap = '<C-M>'
" DOESNT WORK



""""""" Javascript
" Improve javascript syntax higlighting, needed for good folding,
Plug 'jelera/vim-javascript-syntax'

" Advanced syntax highlightin for libraries and es6
Plug 'isRuslan/vim-es6'
Plug 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'react,redux,react-dom,react-redux,moment,lodash,rxjs,express,react-google-maps'

" Indentation for jsx files (missing from jelera: vim-javascript-syntax)
Plug 'gavocanov/vim-js-indent'
" Plug 'othree/yajs.vim'


" Syntax highlighting for .jsx (js files for react js)
Plug 'peitalin/vim-jsx'
Plug 'chemzqm/vim-jsx-improve'
" enable JSX syntax higlighting and indenting in .js files = 0
let g:jsx_ext_required = 0



" Tern.js server: jump to var defs and documentation
Plug 'ternjs/tern_for_vim'

"" Typescript "
Plug 'leafgarland/typescript-vim'
" autocmd BufNewFile,BufRead *.tsx set filetype=javascript.tsx

" GraphQL syntax highlighting
Plug 'jparise/vim-graphql'


call plug#end()



"""""""""""" YCM YouCompleteMe """"""""""""""""""""""""""""""""

let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1 " default = 2
let g:ycm_min_num_identifier_candidate_chars = 0 " default = 0
let g:ycm_auto_trigger = 1 " complete as you type, default = 1
" let g:ycm_key_invoke_completion = '<C-,>'

""" Javascript YCM completion

let g:ycm_semantic_triggers =  {
            \   'javascript,typescript,python,haskell,elixir,go' : ['.'],
            \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
            \   'ruby' : ['.', '::'],
            \   'erlang' : [':'],
            \ }


" nnoremap <silent> te :YcmCompleter GetDoc<CR>
" nnoremap <silent> tt :YcmCompleter GetType<CR>
" nnoremap <silent> td :YcmCompleter GoToDefinition<CR>
" nnoremap <silent> tr :YcmCompleter RefactorRename

nnoremap <silent> te :TernDef<CR>
nnoremap <silent> td :TernDoc<CR>
nnoremap <silent> tt :TernType<CR>
nnoremap <silent> tr :TernRefs<CR>
nnoremap <silent> tn :TernRename<CR>


" Valloric/MatchTagAlways"
" nnoremap <leader>% :MtaJumpToOtherTag<cr>
let g:mta_filetypes = {
            \ 'html' : 1, 'xhtml' : 1, 'xml' : 1,
            \ 'javascript.jsx' : 1,
            \ 'typscript.tsx' : 1,
            \}



""""""""""""""""""END JAVASCRIPT""""""""""""""""""""""""""""""""""""""""





""""""""""" Toggle Fold Columns
set foldmethod=indent
set foldnestmax=1
" nnoremap <C-c> :%foldc<CR>
set foldlevelstart=10
if line("$") > 400
    set foldlevel=3
endif

let g:tagbar_type_markdown = {
\ 'ctagstype': 'markdown',
\ 'kinds': ['h:Heading_L1', 'i:Heading_L2', 'k:Heading_L3']
\ }



""" Haskell ghc-mod completions
" let g:necoghc_enable_detailed_browse = 1
" let g:ghcmod_hlint_options = ['--ignore=Redundant $']
"""Note : LANGUAGE PRAGMAS restricts completion to prelude functions only!
"""Note : <C-x><C-o> for completion prompt

" map <silent> tc :GhcModType<CR>
""" Type Lookup
" map <silent> tr :GhcModTypeClear<CR>
" map <silent> tl :GhcModLintAsync<CR> :wincmd j<CR>
" map <silent> tk :GhcModCheck<CR>
" hi ghcmodType ctermbg=blue
" let g:ghcmod_type_highlight = 'ghcmodType'



""""""""""""""""""" VIM JEDI PYTHON """"""""""""""
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = 0
let g:jedi#auto_vim_configuration = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
" au FileType python setlocal completeopt-=preview " The reason to deactivate jedi#auto_vim_configuration
" popup function documentation window, preview -> popup
set completeopt=menuone,longest,preview
" set completeopt=menuone,longest



""""""""""""" Custom key bindings """"""""""
let mapleader = "\<Space>"
"" save file nnoremap <Leader>w :wa<CR>

:imap kj <ESC>
noremap ;; :
inoremap ;; <Esc>:

inoremap <C-f> <right>
inoremap <C-b> <left>

" replace tabs with 4 whitespace
" nmap <F4> :%s/\t/    /g<CR>
nmap <Leader>s :%s/\t/    /g<CR>
" autocmd FileType javascript,html nmap <F4> :%s/\t/  /g<CR>
" au BufNewFile,BufRead *.js nmap <F4> :%s/\t/  /g<CR>




""""""""""" Nerdtree Config
map <C-t> :NERDTreeToggle<CR>

""  buffers
" nmap gt :bnext<CR>
" nmap tg :bprevious<CR>
nmap bb :bdelete<CR>
nmap <Leader>b :buffers<CR>
nmap tg :tabprevious<CR>


""""""""""" Ipython/R Shells
" map <F5> :! tab ipython3 -i --no-banner %<CR><CR>
" map <F7> :! tab ghci %<CR><CR>
" map <F7> :! R_interactive_script % <CR><CR>

"" Refresh file state
map <leader>r :e! <CR>
nmap <leader>w :wa<CR>


""""""""""" Gundo Tree Toggle
map <C-u> :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

""""""""""" window navigation
nmap <silent> <S-up> :wincmd k<CR>
nmap <silent> <S-down> :wincmd j<CR>
nmap <silent> <S-left> :wincmd h<CR>
nmap <silent> <S-right> :wincmd l<CR>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>


""""""""""" clipboard copy and cut
vmap <C-x> :!pbcopy<CR>
" yanks and copies to system clipboard
vnoremap <C-c> "*y
vnoremap y "*y
vnoremap <C-v> "+p
vnoremap p "*p

""""""""" Tab indent
vnoremap <TAB> >
vnoremap <S-TAB> <
nnoremap <TAB> V >
nnoremap <S-TAB> V <


""""""""""" EmacS bol/eol
noremap <C-a> ^
noremap <C-e> $
inoremap <C-a> <ESC> ^i
inoremap <C-e> <ESC> $i


""""""""" Insert mode
imap <C-f> <Right>
imap <C-b> <Left>

""""""""" Vim Signature
nmap <leader>m '?

"""""""" Multiple Cursors
nmap <leader>n <C-N>

""""""" Tagbar Overview Map
map <leader>t :TagbarToggle<CR>

""""""" easymotion
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)
" Replace default search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" easymotion with hjkl keys
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)



"""""""" Vim lightline  """

let g:lightline = {
\ 'colorscheme': 'oneNeon_lightline',
\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
\ }

let g:lightline.enable = {
\   'statusline': 1,
\   'tabline': 1
\ }


""""""" Vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_tab_guides = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#243e48 ctermbg=237
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#283e48 ctermbg=236


""""""""""""" Color Schemes """"""""""""""""
set termguicolors

colorscheme onedark
" colorscheme japanesque
" colorscheme srcery
" colorscheme materialtheme


" Normal         xxx ctermfg=145 ctermbg=235 guifg=#ABB2BF guibg=#282C34
" highlight MatchParen guibg=#366672 guifg=#71AFEF
highlight MatchParen guifg=#C678DD guibg=#504066
" highlight MatchParen guibg=#282c34 guifg=#E06C75
highlight LineNr    guifg=#1b1e28

" highlight CursorLineNr guifg=#ffb74d
highlight CursorLineNr guifg=#56B6C2
" highlight CursorLineNr guifg=#C678DD

highlight Error guifg=#f57373 guibg=#804040
highlight vimError guifg=#f57373 guibg=#804040

hi IndentGuidesOdd guibg=#2e3140 guifg=#1f1f28
hi IndentGuidesEven guibg=#2e3140 guifg=#1f1f28
hi Comment cterm=italic
hi String guifg=#98C379 guibg=#2f3339

""" browns
" function params: numbers and constants
hi Keyword guifg=#907161
hi Statement guifg=#907161
hi Conditional guifg=#907161

" Yellows
hi Number guifg=#ffb74d
hi Special guifg=#ffb74d

" brighter purple
hi CtrlPMatch guifg=#ba9ef7



" medium red: if else operators
hi Type guifg=#e86868
hi Preproc guifg=#e86868
" orange red
" hi Function gui=bold guifg=#dc662e
" hi Operator guifg=#dc662e



"""""" vim-jsx ONLY
" hi Identifier cterm=italic guifg=#b55353
" hi xmlAttrib cterm=italic guifg=#b55353
hi Identifier cterm=italic
hi xmlAttrib cterm=italic

" Blues
" light blues
hi xmlTagName guifg=#79BCE5
hi xmlTag guifg=#79BCE5
" dark blues
hi xmlEndTag guifg=#2974a1



autocmd FileType python colorscheme materialtheme
" autocmd FileType python colorscheme onedark


