"   vimrc

let $DOTVIM=$HOME . "/.config/nvim"
let $MEMO=$HOME . "/git/Memo"
set runtimepath^=$DOTVIM
" TODO add le else if create undo etc. ici

if !has('nvim')
	set runtimepath+=$DOTVIM/pack/vendor/start/*
endif

source $DOTVIM/init/plugins.vim " has to be loaded before options !! si je met options dans le elsief
source $DOTVIM/init/options.vim
source $DOTVIM/init/functions.vim " TODO move to autoload
source $DOTVIM/init/mappings.vim

"   startup

augroup startup
	autocmd!
	au VimEnter * if @% == '' | setl path+=$DOTVIM/**,$MEMO/*/** | endif
	au VimEnter * if @% == '' | nn <buffer><silent> <CR> :e $MEMO/Lists/todo.md<CR>GMz. | endif
augroup END
