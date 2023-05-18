augroup filetype_svelte
    autocmd!
    " --------------------------------- OPTIONS >>>
    au FileType qf setl wrap
    au FileType svelte setl expandtab tabstop=2 shiftwidth=2 textwidth=80
    au FileType svelte setl softtabstop=2 autoindent
    au FileType svelte setl formatprg=prettier\ --stdin-filepath\ %
    " <<<
    " --------------------------------- PLUGINS >>>
    " <<<
    " --------------------------------- MAPPINGS >>>
    "   Format
    au Filetype svelte nn <buffer> <Space>= Mmmgo=G:silent! :%s/\s\+$//e<CR>`mzz3<C-O>
    " <<<
augroup END
