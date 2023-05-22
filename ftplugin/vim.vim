" @filename  vim.vim
" @created   230522 20:00:37  by  clem9nt@imac
" @updated   230522 20:00:37  by  clem9nt@imac
" @author    Clément Vidon

"   options


setlocal textwidth=80
setlocal path+=$DOTVIM/pack/vendor/start/memo/**
setlocal path+=$DOTVIM/ftplugin/
setlocal path+=$DOTVIM

let maplocalleader="gh"


"   mappings


nn <silent><buffer> <LocalLeader> <nop>

"   clear
nn <silent><buffer> <LocalLeader> Mmmgo=G`mzz3<C-O>

"   docstring skeletong
nn <silent><buffer> <LocalLeader>D mdj
            \
            \:keeppatterns ?function.*(.*)$<CR>
            \O<Esc>O"    @brief <Esc>==A
