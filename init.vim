"   init

let $DOTVIM=$HOME . "/.config/nvim"
set runtimepath^=$DOTVIM
if empty(glob($DOTVIM . "/.undo/vim"))  | exec 'silent !mkdir -p $DOTVIM/.undo/vim'  | endif
if empty(glob($DOTVIM . "/.undo/nvim")) | exec 'silent !mkdir -p $DOTVIM/.undo/nvim' | endif
if empty(glob($DOTVIM . "/.spell")) | exec 'silent !mkdir $DOTVIM/.spell' | endif
if empty(glob($DOTVIM . "/.swap"))  | exec 'silent !mkdir $DOTVIM/.swap' | endif

if !has('nvim')
    set runtimepath+=$DOTVIM/pack/vendor/start/*
    set viminfo='100,<50,s10,h,n$DOTVIM/.viminfo
    set undodir=$DOTVIM/.undo/vim//,/tmp//
else
    set shada='100,<50,s10,h,n$DOTVIM/.shada
    set undodir=$DOTVIM/.undo/nvim//,/tmp//
endif

"   vimrc

source $DOTVIM/init/plugins.vim
source $DOTVIM/init/options.vim
source $DOTVIM/init/commands.vim
source $DOTVIM/init/mappings.vim

"   startup screen

augroup startup
    autocmd!
    let $MEMO=$HOME . "/git/Memo"
    autocmd VimEnter * if @% == '' | setlocal path+=$DOTVIM/**,$MEMO/*/** | endif
    autocmd VimEnter * if @% == '' | nn <buffer><silent> <CR> :e $MEMO/Lists/todo.md<CR>GMz. | endif
augroup END
