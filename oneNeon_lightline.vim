" =============================================================================
" Filename: autoload/lightline/colorscheme/oneNeon_lightline.vim
" Author: peitalin
" License: MIT License
" Last Change: 2015/11/30 08:37:43.
" =============================================================================
" shades of grey
let s:base04 = [ '#181818', 233 ]
let s:base03 = [ '#242424', 235 ]
let s:base023 = [ '#353535 ', 236 ]
let s:base02 = [ '#444444 ', 238 ]
let s:base01 = [ '#585858', 240 ]
let s:base00 = [ '#666666', 242  ]
let s:base0 = [ '#808080', 244 ]
let s:base1 = [ '#969696', 247 ]
let s:base2 = [ '#a8a8a8', 248 ]
let s:base3 = [ '#c0c0c0', 251 ]
" colors
let s:yellow = [ '#ffca50', 180 ]
let s:orange = [ '#f69964', 173 ]
let s:red = [ '#e5746d', 203 ]
let s:magenta = [ '#a379af', 216 ]
let s:lightmagenta = [ '#c49fcf', 218 ]
let s:blue = [ '#3a95c1', 117 ]
let s:cyan = [ '#58bdd6', 118 ]
let s:green = [ '#88af6c', 119 ]
let s:lightgreen = [ '#b6d5a1', 119 ]
let s:brown = [ '#6d5e56', 120 ]
let s:lightbrown = [ '#a59389', 130 ]
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" let s:p.normal.left = [ [ s:base03, s:brown ], [ s:base03, s:lightbrown] ]
let s:p.normal.right = [ [ s:base023, s:base1 ], [ s:base0, s:base02 ] ]

let s:p.inactive.right = [ [ s:base023, s:base01 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base1, s:base02 ], [ s:base00, s:base023 ] ]

let s:p.insert.left = [ [ s:base02, s:blue ], [ s:base02, s:cyan ] ]
let s:p.replace.left = [ [ s:base023, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:green ], [ s:base02, s:lightgreen ] ]
let s:p.normal.left = [ [ s:base02, s:magenta ], [ s:base02, s:lightmagenta ] ]

let s:p.normal.middle = [ [ s:base2, s:base023 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base03 ] ]


" let s:bgblue0 = [ '#14252c', 233 ]
" let s:bgblue1 = [ '#182a33', 235 ]
" let s:bgblue2 = [ '#223344', 238 ]

let s:grey0 = ['#4c5768', 239]
let s:grey1 = ['#2C323C', 237]
let s:greyBackground = ["#282C34", 235]


let s:p.tabline.tabsel = [ [ ["#1b1e28", 233], s:grey0 ] ]
let s:p.tabline.left = [ [ ["#1b1e28", 233], s:grey1 ] ]
let s:p.tabline.middle = [ [ s:base01, s:greyBackground ] ]
let s:p.tabline.right = [ [ s:base01, s:grey1 ] ]
let s:p.normal.error = [ [ s:base02, s:red ] ]
let s:p.normal.warning = [ [ s:base02, s:yellow ] ]

let g:lightline#colorscheme#oneNeon_lightline#palette = lightline#colorscheme#flatten(s:p)
