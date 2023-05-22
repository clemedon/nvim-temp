" @filename  commands.vim
" @created   230522 20:26:45  by  clem9nt@imac
" @updated   230522 20:26:45  by  clem9nt@imac
" @author    Clément Vidon


"   search without moving cursor position
command! -nargs=+ -bar StaticSearch execute ":let @/=expand('<args>')" | set hlsearch | redraw!

"   sudo write
command! W :execute ':silent w !sudo tee %>/dev/null' | :edit!

"   bufonly
command! BufOnly execute '%bdelete | edit # | normal `"'

"   translate
command! -nargs=+ -bar Fr execute ' read! trans "<args>" -from en -to fr -brief 2> /dev/null'
command! -nargs=+ -bar En execute ' read! trans "<args>" -from fr -to en -brief 2> /dev/null'
command! -nargs=+ -bar Enp execute '! clear; trans "<args>" -from fr -to en -brief 2> /dev/null -play'

"   synonym ('-l fr francais' / key:X4s8FmmkYqgU1LIcjEBA)
command! -nargs=+ -bar Sy execute '! clear; synonym "<args>"'

"   tmux sendkey
command! -nargs=+ -bar Sl execute 'silent ! tmux send-keys -t left "<args>" Enter' | redraw!
command! -nargs=+ -bar Sr execute 'silent ! tmux send-keys -t right "<args>" Enter' | redraw!
command! -nargs=+ -bar S0 execute 'silent ! tmux send-keys -t 0 "<args>" Enter' | redraw!
command! -nargs=+ -bar S1 execute 'silent ! tmux send-keys -t 1 "<args>" Enter' | redraw!
