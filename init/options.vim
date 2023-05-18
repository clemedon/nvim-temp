"       GUI

augroup custom_hi
    autocmd!
    filetype plugin indent on
"    au ColorScheme * syntax enable maxlines=200
     au ColorScheme * hi LineNr ctermbg=NONE
     au ColorScheme * hi CursorLine gui=underline cterm=underline ctermbg=NONE
     au ColorScheme * hi Comment term=bold ctermfg=103
augroup END

if system("uname -s") == "Darwin\n"
    " color seoul256-light | set bg=light
    color nord | set bg=dark
elseif system("uname -s") == "Linux\n"
    " color seoul256 | set bg=light
    color nord | set bg=dark
endif


set guicursor=n-v-c-i:block
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:·,diff:-

"       Ergonomy

set noincsearch                                 "   disable incremental search
set ignorecase smartcase                        "   ignore case except if uppercase used
set nowrap                                      "   screen line wrapping
set ruler                                       "   cursor pos%[y:x] in statusline
set wildmenu                                    "   displays possible completion matches
set spelllang=en                                "   spell lang suggestions
set spellfile=$DOTVIM/.spell/custom.utf-8.add

"       Indentation

set autoindent                                  "   auto indent
set expandtab                                   "   insert spaces instead tab
set formatoptions+=np                           "   see ':h fo-table'
set shiftround                                  "   indent to the nearest tab mark
set shiftwidth=4 tabstop=4                      "   shift and tab width in spaces
set softtabstop=4                               "   simulate tabs for backspaces too

"       Path

set path=$DOTVIM/init                           "   :find path
set wildignore=.git                             "   wildmenu results to hide

"       Security

set nomodeline                                  "   disables modelines
set secure                                      "   disables shell access
set backupdir=$DOTVIM/.backup//,/tmp//          "   backup files directory
set directory=$DOTVIM/.swp//,/tmp//             "   undo files directory
set undodir=$DOTVIM/.undo/,/tmp//               "   undo files directory
set undofile                                    "   enable undo
set viminfo+=n$DOTVIM/.viminfo                  "   viminfo location
