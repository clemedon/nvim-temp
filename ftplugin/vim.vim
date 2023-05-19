"   options

setl foldmethod=marker
setl foldmarker=>>>,<<<
setl textwidth=80

setl path+=$DOTVIM/pack/vendor/start/memo/**
setl path+=$DOTVIM/after/ftplugin/,$DOTVIM

"   mappings

nn <silent><buffer> gq Mmmgo=G`mzz3<C-O>
nn <silent><buffer> <space>D mdj
            \
            \:keeppatterns ?function.*)$<CR>
            \O<Esc>O"    @brief <Esc>==A
