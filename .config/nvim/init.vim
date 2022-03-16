set number
"set relativenumber
set noswapfile
set fileformat=unix
set backspace=indent,eol,start " backspace setup
set clipboard+=unnamedplus " clipboard
set mouse=a
set encoding=UTF-8
set scrolloff=7


" TABS
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
"set termguicolors

set colorcolumn=79

syntax on
set t_Co=256
set cursorline

set completeopt=menu,menuone,noselect

"SYSTEM CLIPBOARD
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

"PLUGS
call plug#begin()

Plug 'preservim/nerdcommenter' "COMMENTS
Plug 'matveyt/neoclip' " SYSTEM CLIPBOARD
Plug 'preservim/nerdtree' 
Plug 'justinmk/vim-sneak'
Plug 'crbinz/vim-links' "LINKS
Plug 'mhinz/vim-startify' " ...
Plug 'ap/vim-css-color'
Plug 'romgrk/barbar.nvim' "TABS

"ICONS
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

Plug 'Pocco81/AutoSave.nvim'

"AUTOCOMPLETE
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

"AUTOIMPORT
Plug 'mgedmin/python-imports.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'universal-ctags/ctags'
Plug 'sansyrox/vim-python-virtualenv'

"THEMES
Plug 'projekt0n/github-nvim-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dylanaraps/wal.vim'
call plug#end()

nnoremap <F6> :e <C-R>=@%<CR>
inoremap jk <Esc>
nnoremap <silent> ,<space> :nohlsearch<CR>
map f <Plug>Sneak_s
map F <Plug>Sneak_S

"THEMES

"colorscheme wal
"colorscheme github_dark

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"colorscheme onehalflight
"let g:airline_theme='onehalfdark'

" LIGHT
colorscheme onehalfdark
let g:airline_theme='onehalflight'


"GUI
"set guifont=Iosevka\Nerd\Font:h12


"AIRLINE BAR
let g:airline_powerline_fonts = 1


"AUTOIMPORT
let g:python3_host_prog='/usr/bin/python3'
map <F5>    :ImportName<CR>
map <C-F5>  :ImportNameHere<CR>


" COMMENTARY
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv


" NERDTree
let g:NERDTreeWinSize=20

nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-a> :NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

autocmd FileType html,css EmmetInstall

"TABS
nnoremap <silent>    <A-S-tab> :BufferPrevious<CR>
nnoremap <silent>    <A-tab> :BufferNext<CR>

nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>

nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
nnoremap <silent>    <A-w> :BufferClose<CR>

let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')
let bg_visible = get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')
let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')

hi default link BufferCurrent      Normal
hi default link BufferCurrentMod   Normal
hi default link BufferCurrentSign  Normal
exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current

hi default link BufferVisible      TabLineSel
hi default link BufferVisibleMod   TabLineSel
hi default link BufferVisibleSign  TabLineSel
exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible

hi default link BufferInactive     TabLine
hi default link BufferInactiveMod  TabLine
exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive

hi default BufferShadow guifg=#000000 guibg=#000000


"SNIPPETS
let g:UltiSnipsSnippetDirectories=['/home/d/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"ICONS
lua <<EOF
require'nvim-web-devicons'.get_icons()
EOF
"AUTOSAVE

lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)


  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	 ["<Tab>"] = cmp.mapping(function(fallback)
		  if cmp.visible() then
			cmp.select_next_item()
		  else
			fallback()
		  end
		end, { "i" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
		  if cmp.visible() then
			cmp.select_prev_item()
		  else
			fallback()
		  end
		end, { "i" }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, 
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF
