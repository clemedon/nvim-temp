"  vimrc

source $DOTVIM/init/plugins.vim
source $DOTVIM/init/options.vim
source $DOTVIM/init/functions.vim
source $DOTVIM/init/mappings.vim

"  startup

augroup startup
    autocmd!
    au VimEnter * if @% == '' | setl path+=$DOTVIM/**,$MEMO/*/** | endif
    au VimEnter * if @% == '' | nn <buffer><silent> <CR> :e $MEMO/Lists/todo.md<CR>GMz. | endif
augroup END
