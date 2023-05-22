" @filename  mappings.vim
" @created   230522 18:01:57  by  clem9nt@imac
" @updated   230522 20:53:47  by  clem9nt@imac
" @author    Clément Vidon


" <Space> \ <Bs> <CR> <C-k> <C-j> gn gs gy gz gc z
" mq mw me mr mt ma ms md mf mg mz mx mc mv mb
" m, m. m' m; m/ m<CR> m<Space> m<BS> m<Tab> m= m[ m]
" '<Tab> '<Space> `<Tab> `<Space>
" dc ds dy d! d= d< d>
" yc yd yo ys y! y=
" cd cs co cp
" =p =P


let mapleader=" "


"   file / buffer (s)


nn s  <nop>
nn gs <nop>
nn st <nop>
nn sh <nop>
nn sv <nop>
nn sn <nop>
nn sp <nop>

"   find
nn sf  :fin<Space>
nn gsf :fin!<Space>
nn stf :tabf<Space>
nn shf :sf<Space>
nn svf :vert sf<Space>

"   edit
nn se  :e<Space>
nn gse :e!<Space>
nn ste :tabe<Space>
nn she :sp<Space>
nn sve :vert<Space>

"   prev
nn ss  :e #<CR>
nn gss :e! #<CR>
nn sts :tabe #<CR>
nn shs :sp #<CR>
nn svs :vert #<CR>

"   cwd edit
nn s.  :lc %:h<CR>:e<Space>
nn gs. :lc %:h<CR>:e!<Space>
nn st. :lc %:h<CR>:tabe<Space>
nn sh. :lc %:h<CR>:sp<Space>
nn sv. :lc %:h<CR>:vert<Space>

"   cwd nav
nn sne :lc %:h<CR>:sil r! ls -1 \| grep -A 1 "%" \| tail -n 1<CR>v$h"yyu:e <C-r>y<CR>
nn spe :lc %:h<CR>:sil r! ls -1 \| grep -B 1 "%" \| head -n 1<CR>v$h"yyu:e <C-r>y<CR>

"   buffer nav
nn spb :bp<CR>
nn snb :bn<CR>

"   buffer list
nn sb :ls<CR>:b<Space>

"   tag
nn sk :tag /
nn sij :ijump /
nn sil :ilist /
nn sis :isearch /

"   grep
nn sg :grep -r<Space>

"   memo
nn sl  <nop>
nn sli :e $MEMO/INDEX.md<CR>/Lists<CR>
nn sle :e $MEMO/Resources/english.md<CR>?##  Voca<CR>
nn slf :e $MEMO/Resources/french.md<CR>?##  Voca<CR>
nn slt :e $MEMO/Lists/todo.md<CR>G$?\(\[\]\\|\[\d\d:\d\d\]\) <CR>z.:let @/=""<CR>
nn slh :e $MEMO/Lists/history.gpg.md<CR>
nn slp :e $MEMO/Lists/post-it.md<CR>gi<Esc>
nn sla :e $MEMO/Archives/Archives.md<CR>gi<Esc>


"   cmdline (gl)


nn gl <nop>
nn glbc V:!bc<CR>
nn glcc :set cursorcolumn!<CR>
nn glcd :cd %:h<CR>
nn glcl :set cursorline!<CR>
nn glco :call functions#ColorSwitch('seoul256-light', 'nord')<CR>
nn glen :En<Space>
nn glex :exe getline(".")<CR>
nn glfr :Fr<Space>
nn glhe :call functions#Header()<CR>
nn glhl :set hlsearch!<CR>
nn gllc :lc %:h<CR>
nn glnu :set number!<CR>
nn glpd :put=strftime('%a %d %b %Y')<CR>
nn glqn :call functions#QFNav()<CR>
nn glrn :set relativenumber!<CR>
nn glsb :set scrollbind!<CR>
nn glsc :exec ':set scrolloff=' . 999*(&scrolloff == 0)<CR>
nn glsk :noau w<CR>:S0<Space>
nn glso :silent write\|source $MYVIMRC\|e<CR>zR
nn glsp :set spell!<CR>
nn glsr :noau w<cr>:s0 \!\!<CR>
nn glss :StaticSearch<Space>
nn glst :set startofline!<CR>
nn glsy :call functions#GetSyntax()<CR>
nn glts :put=strftime('%y%m%d%H%M%S')<CR>
nn glve :if &ve == "" \| set ve=all \| else <BAR> set ve= \| endif \| set ve?<CR>


"   improvements


"   write / quit
no mw  :write<CR>
no gmw :write!<CR>
no mW  :wall<CR>
no gmW :wall!<CR>
no mq  :quit<CR>
no gmq :quit!<CR>
no mQ  :quitall<CR>
no gmQ :quitall!<CR>
nn md  :bn\|bd#<CR>
nn gmd :bn!\|bd! #<CR>

"   windows
no <Leader>w <C-W>
no <Leader>wM <C-W>_\|<C-W><BAR>
no <Leader>wX <C-W>x\|<C-W>_\|<C-W><BAR>
tno <Leader>w <C-W>
tno <Leader>wM <C-W>_\|<C-W><BAR>
tno <Leader>wX <C-W>x\|<C-W>_\|<C-W><BAR>
nn <S-Left> <C-W>5<
nn <S-Up> <C-W>5+
nn <S-Right> <C-W>5>
nn <S-Down> <C-W>5-
tno <S-Left> <C-W><
tno <S-Up> <C-W>+
tno <S-Right> <C-W>>
tno <S-Down> <C-W>-

"   cmdline
no x :

"   eye level cursor
no z, z.15<C-e>

"   enlarge current split
no <Leader>we :exec 'vertical resize '. string(&columns * 0.66)<CR>
no <Leader>wE :exec 'vertical resize '. string(&columns * 0.33)<CR>

"   static search
no g8 *N
no g3 #N

"   paste without copy
vno P pgvy

"   spell
nn 2s 2z=
nn 1s 1z=

"   indent
nn <Space>= Mmmgo=G`mzz3<C-O>

"   clipboard
nn <silent> <Leader>y :call system("xclip -sel clip", getreg("\""))<CR>
no "+Y V:!xclip -f -sel clip<CR>
vn "+y :!xclip -f -sel clip<CR>
no "+p :r!xclip -o -sel clip<CR>
no "+P :-1r!xclip -o -sel clip<CR>

"   guard rails
nn Q :echo "!Q"<CR>
