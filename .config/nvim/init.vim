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

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

Plug 'matveyt/neoclip'
Plug 'preservim/nerdtree'
Plug 'chrisbra/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'morhetz/gruvbox'

call plug#end()


let g:gruvbox_contrast_dark= 'hard'
let g:gruvbox_contrast_light= 'hard'
let g:gruvbox_italicize_comments= 1


colorscheme gruvbox
nnoremap <C-]> :set background=dark<CR>
nnoremap <C-p> :set background=light<CR>


" NERDTree


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree %<CR>
nnoremap <C-t> :NERDTreeToggle %<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" comment
nmap <C-_> gcc <CR>
" nmap <C-_> gc <CR>
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

lua << EOF
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  completion = {
    autocomplete = false
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<S-q'] = cmp.mapping.select_prev_item(),
    ['<S-e>'] = cmp.mapping.select_next_item(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
EOF





set colorcolumn=79


