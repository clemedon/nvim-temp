set nocp
let &runtimepath.=',$DOTVIM'
let &packpath = &runtimepath

"           VIMRC

source $DOTVIM/plugins.vim
source $DOTVIM/options.vim
source $DOTVIM/functions.vim
source $DOTVIM/mappings.vim

"           FTPLUGIN

" source $DOTVIM/after/ftplugin/css.vim
" source $DOTVIM/after/ftplugin/go.vim
" source $DOTVIM/after/ftplugin/html.vim
" source $DOTVIM/after/ftplugin/javascript.vim
" source $DOTVIM/after/ftplugin/json.vim
" source $DOTVIM/after/ftplugin/php.vim
" source $DOTVIM/after/ftplugin/tidal.vim
" source $DOTVIM/after/ftplugin/yml.vim
" source $DOTVIM/after/ftplugin/c.vim
" source $DOTVIM/after/ftplugin/motoko.vim
" source $DOTVIM/after/ftplugin/markdown.vim
" source $DOTVIM/after/ftplugin/python.vim
" source $DOTVIM/after/ftplugin/qf.vim
" source $DOTVIM/after/ftplugin/svelte.vim
" source $DOTVIM/after/ftplugin/vim.vim

" source $DOTVIM/after/ftplugin/memo.vim
" source $DOTVIM/after/ftplugin/todo.vim

"           PLUGINS

" source $DOTVIM/autoload/plugin/redact_pass.vim

"           STARTUP

augroup startup
    autocmd!
    au VimEnter * if @% == '' | setl path+=$DOTVIM/**,$MEMO/*/** | endif
    au VimEnter * if @% == '' | nn <buffer><silent> <CR> :e $MEMO/Lists/todo.md<CR>GMz. | endif
augroup END
