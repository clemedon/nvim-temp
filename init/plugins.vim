" --------------------------------- PLUGINS OPTIONS >>>

"   COLORSCHEME
let g:dracula_italic = 0
let g:seoul256_background = 256

"   EMMET
if exists('EmmetInstall')
    au! FileType html,css,javascript,php EmmetInstall
endif
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = ','
let g:user_emmet_mode = 'i'

"   GITGUTTER
hi SignColumn ctermbg=NONE
set foldtext=gitgutter#fold#foldtext()
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
let g:gitgutter_enabled = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_git_executable = '/usr/bin/git'
let g:gitgutter_max_signs = 500  " default value 500
if executable('ag')
    let g:gitgutter_grep = 'ag'
endif

"   GOYO
let g:goyo_width = 90
let g:goyo_height = '100%'

"   GUTENTAGS
let g:gutentags_enabled = 0
let g:gutentags_ctags_exclude = ['*.svelte', '*.md', 'doc/**', 'test/**', '*.h']
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['.project_root', 'Makefile', '.git']
if $LOGNAME == "cvidon" " 42
    " let g:gutentags_ctags_executable = '$HOME/.linuxbrew/bin/ctags'
    let g:gutentags_ctags_executable = '/usr/bin/ctags'
endif

"   LIMELIGHT
let g:limelight_conceal_ctermfg = 'DarkGray'
let g:limelight_default_coefficient = 0.5

"   NETRW
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0

"   RAINBOW
let g:rainbow_active = 0
" <<<
" --------------------------------- PLUGINS LOADER >>>
"ackadd cfilter                         "   REDUCE THE QF OUTPUT
"ackadd matchit                         "   CLOSING TAG MATCH
call plug#begin('$DOTVIM/.plugged')
"   GENERAL
Plug 'tpope/vim-repeat'                 "   REPEAT EXTENSION
Plug 'tpope/vim-surround'               "   SURROUND OPERATOR
Plug 'tpope/vim-commentary'             "   COMMENT OUT
Plug 'airblade/vim-gitgutter'           "   GIT GUTTER
Plug 'AndrewRadev/linediff.vim'         "   DIFF BUFFER CHUNK
Plug 'ludovicchabant/vim-gutentags'     "   TAGS MANAGER
Plug 'junegunn/vim-journal'
"   SVELTE
" Plug 'othree/html5.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}
"   HTML CSS
"lug 'andrewradev/tagalong.vim'         "   AU-REN CLOSING TAG
"lug 'gregsexton/matchtag'              "   HI MATCHING HTML TAG
"lug 'mattn/emmet-vim'                  "   HTML CSS EMMET
"   PHP
"lug 'sumpygump/php-documentor-vim'     "   PHP DOC GENERATOR
"lug 'arnaud-lb/vim-php-namespace'      "   INSERT THE USE STATEMENT
"lug 'alvan/vim-php-manual'             "   PHP MAN ENTRY
"   JS
"lug 'pangloss/vim-javascript'          "   BETTER SYNTAX
"   SWEET
"lug 'ap/vim-css-color'                 "   COLOR PREVIEW
" Plug 'junegunn/goyo.vim'                "   DISTRACTION FREE
" Plug 'junegunn/limelight.vim'           "   HYPERFOCUS
Plug 'arcticicestudio/nord-vim'         "   COLORSCHEME
Plug 'junegunn/seoul256.vim'            "   COLORSCHEME
"lug 'dracula/vim'                      "   COLORSCHEME
"   TRY
"lug 'tpope/vim-dispatch'               "   MAKE WRAPPER
"lug 'tpope/vim-fugitive'               "   GIT WRAPPER
"lug 'jaxbot/semantic-highlight.vim'    "   SEMANTIC HIGHLIGHT
"   CREATIVE
"lug 'tidalcycles/vim-tidal'            "   LIVE CODING
"lug 'sophacles/vim-processing'         "   PROCESSING VIM
call plug#end()
" <<<
