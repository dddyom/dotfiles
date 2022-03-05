set number
" set relativenumber
set noswapfile


set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

set mouse=a
set encoding=UTF-8
set scrolloff=7
call plug#begin()

Plug 'mhinz/vim-startify'

Plug 'matveyt/neoclip'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tyru/caw.vim'
Plug 'ap/vim-css-color'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'morhetz/gruvbox'
Plug 'akinsho/toggleterm.nvim'

Plug 'dylanaraps/wal.vim'

call plug#end()


" let g:gruvbox_contrast_dark= 'hard'
" let g:gruvbox_contrast_light= 'hard'
" let g:gruvbox_italicize_comments= 1
" colorscheme gruvbox

colorscheme wal

nnoremap <C-]> :set background=dark<CR>
nnoremap <C-p> :set background=light<CR>


" NERDTree


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree %<CR>
nnoremap <C-t> :NERDTreeToggle %<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" comment
nmap <C-_> gcI <CR>
" tabs

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-w> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
" nnoremap <silent> <C-s>    :BufferPick<CR>

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>


" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

inoremap jk <Esc>
" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>


vmap <C-j> y<Esc>
vmap <C-x> d<Esc>
map <C-v> p
imap <C-v> <Esc>p
imap <C-z> <Esc>u


nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

set colorcolumn=79

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
