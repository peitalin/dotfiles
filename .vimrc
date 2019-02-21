

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
set shiftwidth=2
set tabstop=2
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
set nohlsearch    " highlight removed until next search
" set splitbelow  " Preview window opens to the bottom, not above
set splitright    " Preview window opens to the right, not above
set shortmess=aFc " remove prompts to continue messages in cmd line
""""""""""""" END General ViM Settings """""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""" Plug configs """""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
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
let g:ctrlp_root_markers = ['index.ios.tsx', 'webpack.*config.js', 'README.md', 'package.json']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|jspm_packages|build|target|manifest.json)|(\.(swp|ico|git|svn|lock|svg|png|jp[e]?g))$'
let g:ctrlp_max_files = 0
" default open in new tabs, instead of buffer
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }
" Autoread file changes.
Plug 'djoshea/vim-autoread'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'roosta/vim-srcery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'rakr/vim-two-firewatch'
Plug 'Wutzara/vim-materialtheme'



"""""""""""" Autocompletion """"""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" :Coc-install coc-json coc-rls
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap keys for gotos
nmap <silent> td <Plug>(coc-definition)
nmap <silent> tt <Plug>(coc-type-definition)
nmap <silent> ti <Plug>(coc-implementation)
nmap <silent> tr <Plug>(coc-references)

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

" Completion - youcompleteme
Plug 'Valloric/YouCompleteMe', {
     \ 'build' : {
     \     'mac' : './install.py --ts-completer',
     \     'unix' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
     \    }
     \ }

" Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration
Plug 'w0rp/ale'
" let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>'
let g:ale_lint_delay = 55
let b:ale_linters = ['stylelint', 'eslint']
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
" Default: 200ms
nmap <C-c> :ALEDetail<CR>
nmap <C-x> :ALEHover<CR>
nmap <C-z> :ALEHover<CR>



"""""""""""""""" Syntax highlighting
"" Rust
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'maralla/vim-toml-enhance', {'depends': 'cespare/vim-toml'}

""" Python
Plug 'davidhalter/jedi-vim'
"" Docker
Plug 'ekalinin/Dockerfile.vim'

"" Go
Plug 'fatih/vim-go'

"" Solidity
Plug 'tomlion/vim-solidity'

"""" CSS syntax highlight
Plug 'othree/csscomplete.vim'
" Add Support css3 properties
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
" highlight hex colors in color
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.sass set filetype=sass.css
" scss lint
Plug 'gcorne/vim-sass-lint'

""""""" Javascript
" Syntax highlighting for .jsx (typescript)
Plug 'peitalin/vim-jsx-typescript'
"" Typescript "
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
" GraphQL syntax highlighting
" Plug 'jparise/vim-graphql'
" Plug 'posva/vim-vue'


""""""" Brackets & Parentheses highlighting
" Allow autoclose paired characters like [,] or (,),
Plug 'jiangmiao/auto-pairs'
" Highlights the matching HTML tag when the cursor is positioned on a tag.
Plug 'Valloric/MatchTagAlways'
" Valloric/MatchTagAlways"
nnoremap <leader>% :MtaJumpToOtherTag<cr>
let g:mta_filetypes = {
            \ 'html' : 1, 'xhtml' : 1, 'xml' : 1,
            \ 'javascript' : 1,
            \ 'javascript.jsx' : 1,
            \ 'javascript.tsx' : 1,
            \ 'typescript.tsx' : 1,
            \ 'typescript' : 1
            \}

"""""""""""" Vim Snippets
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

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" PLUGS MUST BE ABOVE THIS LINE """""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""" YCM YouCompleteMe """"""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1 " default = 2
let g:ycm_min_num_identifier_candidate_chars = 0 " default = 0
let g:ycm_auto_trigger = 1 " complete as you type, default = 1
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_key_invoke_completion = '<C-y>'
" Disable loading YCM
" let g:loaded_youcompleteme = 1
" Disable loading YCM linting
let g:ycm_show_diagnostics_ui = 0
"
" """ Javascript YCM completion
let g:ycm_semantic_triggers =  {
            \   'javascript,typescript,python,haskell,go' : ['.'],
            \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
            \   'ruby' : ['.', '::'],
            \ }

let g:ycm_filetype_blacklist = { 'rust': 1 }
" nnoremap <silent> te :YcmCompleter GetDoc<CR>
" nnoremap <silent> tt :YcmCompleter GetType<CR>
" nnoremap <silent> td :YcmCompleter GoToDefinition<CR>
" nnoremap <silent> tr :YcmCompleter RefactorRename
" nnoremap <silent> dt <C-o>


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

nnoremap <silent> <F11> :TagbarToggle<CR>



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
"""NEVER MAP TO: <C-[> , causes mouse scrolling bug
" http://stackoverflow.com/questions/21738018/vim-how-do-i-map-number-keys

let mapleader = "\<Space>"
"" save file nnoremap <Leader>w :wa<CR>

:imap kj <ESC>
noremap ;; :
inoremap ;; <Esc>:

inoremap <C-f> <right>
inoremap <C-b> <left>

" replace tabs with 4 whitespace
" nmap <F4> :%s/\t/    /g<CR>
nmap <Leader>s :%s/\t/  /g<CR>
autocmd FileType python,rust,haskell nmap <Leader>s :%s/\t/    /g<CR>
" au BufNewFile,BufRead *.js *.html nmap <Leader>s :%s/\t/  /g<CR>
autocmd FileType python,rust,haskell,markdown setlocal shiftwidth=4 tabstop=4
" au BufNewFile,BufRead *.hbs setlocal ft=d
autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.vue set filetype=vue.typescript
autocmd FileType vue.typescript setlocal commentstring=//\ %s
autocmd FileType typescript setlocal commentstring=//\ %s
autocmd FileType json setlocal commentstring=//\ %s
" autocmd FileType *.jsx,*.tsx setlocal commentstring=//\ %s
autocmd FileType json syntax match Comment +\/\/.\+$+

" Ctrl-P refresh file cache
nmap C :CtrlPClearCache<cr>

""""""""""" Nerdtree Config
map <C-t> :NERDTreeToggle<CR>

""  buffers
" nmap gt :bnext<CR>
" nmap tg :bprevious<CR>
nmap bd :bdelete<CR>
nmap <Leader>b :buffers<CR>
nmap tg :tabprevious<CR>

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

"""""" disable annoying lowercase shortcut in visual-mode
vnoremap u <Nop>

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
map <leader>c :TagbarToggle<CR>

""""""" easymotion
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
    \ 'mode_map': { 'c': 'NORMAL' },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'filename' ] ]
    \ },
    \ 'component_function': {
    \   'modified': 'LightlineModified',
    \   'readonly': 'LightlineReadonly',
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileformat',
    \   'filetype': 'LightlineFiletype',
    \   'fileencoding': 'LightlineFileencoding',
    \   'mode': 'LightlineMode',
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
    \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '♤ ' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:f') ? expand('%:f') : '[New File]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

" NORMAL / INSERT / VISUAL
function! LightlineMode()
  return winwidth(0) > 40 ? lightline#mode() : ''
endfunction

" javascript.jsx
function! LightlineFiletype()
  return winwidth(0) > 100 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" utf-8
function! LightlineFileencoding()
  return winwidth(0) > 80 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

" unix
function! LightlineFileformat()
  return winwidth(0) > 120 ? &fileformat : ''
endfunction

let g:lightline.enable = {
\   'tabline': 1
\ }

function! ResizeCmdHeight()
  if &columns < 120
    set cmdheight=2
  else
    set cmdheight=1
  endif
endfunction

augroup ResizeCmdOnVimResized
    autocmd!
    autocmd VimResized * call ResizeCmdHeight()
augroup END


""""""" Vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
autocmd FileType python,rust let g:indent_guides_guide_size = 1
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
" autocmd FileType rust colorscheme srcery
" autocmd FileType python colorscheme onedark

" Normal         xxx ctermfg=145 ctermbg=235 guifg=#ABB2BF guibg=#282C34
highlight Normal guibg=#21242a
highlight MatchParen guifg=#C678DD guibg=#504066
highlight LineNr    guifg=#151822
highlight CursorLineNr guifg=#56B6C2
highlight Error guifg=#f57373 guibg=#804040
highlight vimError guifg=#f57373 guibg=#804040

" hi IndentGuidesEven guibg=#21242a guifg=#1f1f28
hi IndentGuidesEven guibg=#2a2e30 guifg=#1f1f28
hi IndentGuidesOdd guibg=#262a2c guifg=#1f1f28
hi Comment cterm=italic guifg=#4a5158
hi String guifg=#98C379 guibg=#2a2e34

""" browns
" function params: numbers and constants
" hi Keyword guifg=#907161
" hi Statement guifg=#56B6C2
" hi Conditional guifg=#56B6C2

" Yellows
hi Number guifg=#E5C07B
hi Special guifg=#E5C07B
hi Boolean guifg=#E5C07B
hi Type guifg=#F0A15F
" #D19A66

" purple
hi CtrlPMatch guifg=#ba9ef7
hi Visual guibg=#364652
hi Keyword guifg=#ba9ef7
hi Function guifg=#5682A3

" dark grey, RUST preproc
hi Preproc guifg=#37505C


""" Pink
"""""" vim-jsx ONLY
hi Identifier guifg=#D96Ab2
" hi Identifier cterm=italic guifg=#D96Ab2
" hi Statement guifg=#D96AB2
hi Conditional guifg=#D96AB2


""" Go and Python
" Light blue
autocmd FileType python,go highlight Keyword guifg=#59ACE5
autocmd FileType python,go highlight goDeclaration guifg=#59ACE5
" Dark blue
autocmd FileType python,go highlight Function guifg=#2974a1
autocmd FileType python,go highlight goConditional guifg=#2974a1
" cyan
autocmd FileType python,go highlight goStatement guifg=#56B6C2
autocmd FileType python,go highlight goRepeat guifg=#56B6C2


" " dark red
" hi tsxTagName guifg=#E06C75
" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575
" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic

" light blue
hi tsxTagName guifg=#59ACE5
" dark blue
hi tsxCloseString guifg=#2974a1
hi tsxCloseTag guifg=#2974a1
hi tsxAttributeBraces guifg=#2974a1
hi tsxEqual guifg=#2974a1
" green
hi tsxAttrib guifg=#1BD1C1


" cyan
hi Constant guifg=#56B6C2
hi typescriptBraces guifg=#56B6C2
hi typescriptEndColons guifg=#56B6C2
hi typescriptRef guifg=#56B6C2
hi typescriptPropietaryMethods guifg=#56B6C2
hi typescriptEventListenerMethods guifg=#56B6C2
hi typescriptFunction guifg=#56B6C2
hi typescriptVars guifg=#56B6C2
hi typescriptParen guifg=#56B6C2
hi typescriptDotNotation guifg=#56B6C2
hi typescriptBracket guifg=#56B6C2
hi typescriptBlock guifg=#56B6C2
hi typescriptJFunctions guifg=#56B6C2
hi typescriptSFunctions guifg=#56B6C2
hi typescriptInterpolationDelimiter guifg=#56B6C2
hi typescriptExceptions guifg=#DDA671
" hi typescriptIdentifier guifg=#907161
" hi typescriptStorageClass guifg=#907161
hi typescriptIdentifier guifg=#65809D
hi typescriptStorageClass guifg=#65809D
" JSON
hi jsonCommentError cterm=italic guifg=#4a5158

" javascript
hi jsParens guifg=#56B6C2
hi jsObjectBraces guifg=#C678DD
hi jsFuncBraces guifg=#56B6C2
hi jsObjectFuncName guifg=#D19A66
hi jsObjectKey guifg=#56B6C2

" vim-jsx-typescript
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66


" JSX Dark Blue and Neon Green highlights
hi xmlEndTag guifg=#2974a1
hi tsxCloseString guifg=#2974a1
hi htmlTag guifg=#2974a1
hi htmlEndTag guifg=#2974a1
hi htmlTagName guifg=#59ACE5
hi tsxAttrib guifg=#1BD1C1


" rust cyan
hi rustModPath guifg=#DF997A
hi rustFuncCall guifg=#60A0D0
hi rustFuncName guifg=#60A0D0
hi rustTrait guifg=#C898C8



" Identify the syntax highlighting group used at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


