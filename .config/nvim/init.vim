" *** PLUGS ***
call plug#begin()
Plug 'preservim/nerdcommenter'						"COMMENTS
Plug 'matveyt/neoclip'								"SYSTEM CLIPBOARD
Plug 'preservim/nerdtree'							"NERDTREE
Plug 'justinmk/vim-sneak'							"SNEAK f
Plug 'crbinz/vim-links'								"LINKS

" *** UTILS ***
Plug 'Pocco81/AutoSave.nvim'						"AUTOSAVE
Plug 'windwp/nvim-autopairs'						"AUTOPAIRS
Plug 'folke/which-key.nvim'							" HOTKEY RECOGNISION
Plug 'Chiel92/vim-autoformat'						"AUTOFORMAT
Plug 'alvan/vim-closetag'							"AUTOCLOSE TAGS
Plug 'nanozuki/tabby.nvim'							"TABS
Plug 'junegunn/goyo.vim'							"READER MODE


Plug 'kyazdani42/nvim-web-devicons'					"ICONS
Plug 'ryanoasis/vim-devicons'						"ICONS
Plug 'ap/vim-css-color'								"CSS COLORS
Plug 'mhinz/vim-startify'							"START SCREEN

"Plug 'projekt0n/github-nvim-theme'
"Plug 'dylanaraps/wal.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" *** AUTOCOMPLETE ***
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'SirVer/ultisnips'								"SNIPPETS
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'davidhalter/jedi-vim'							"DOCUMENTATION

" *** SYNTAX ***
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

" *** AUTOIMPORT ***
Plug 'mgedmin/python-imports.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'universal-ctags/ctags'
Plug 'sansyrox/vim-python-virtualenv'

" *** SEARCH
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
" *** PE PLUGS END ***



" *** KEYMAPS ***

"SYSTEM CLIPBOARD
"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"nnoremap <C-p> "+gP
"vnoremap <C-p> "+gP

let mapleader = "\<Space>"

"INSERT EMPTY STRING <Space> + o
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>


"READER MODE F7
noremap  <F7> :Goyo<CR>

"AUTOFORMAT F3
noremap <F3> :Autoformat<CR>

"OPEN FILE IN CUR DIR F6
nnoremap <F6> :e <C-R> %:h/


inoremap jk <Esc>
inoremap  <C-l> <Esc>la
nnoremap <silent> ,<leader> :nohlsearch<CR>

"SNEAK
map f <Plug>Sneak_f
map F <Plug>Sneak_F

map t <Plug>Sneak_s
map T <Plug>Sneak_S

"SEARCH
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



" ***THEMES ***
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



" *** STARTIFY ***
let g:startify_custom_header =
			\ startify#pad(split(system('figlet -w 100 Neovim'), '\n'))
let g:startify_lists = [{ 'type': 'dir',       'header': ['   MRU '. getcwd()] },]



" *** GUI ***
"set guifont=Iosevka\Nerd\Font:h12



" *** AUTOIMPORT ***
let g:python3_host_prog='/usr/bin/python3'
map <F5>    :ImportName<CR>
map <C-F5>  :ImportNameHere<CR>



" *** DOCUMENTATION ***
let g:jedi#completions_enabled = 0



" *** COMMENTARY ***
nmap <C-_> <Plug>NERDCommenterToggle<CR>
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv



" *** NERDTREE ***
let g:NERDTreeWinSize=20
let NERDTreeQuitOnOpen=1

nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-a> :NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>



" *** TABS ***
nnoremap <silent>    <A-1> 1gt<CR>
nnoremap <silent>    <A-2> 2gt<CR>
nnoremap <silent>    <A-3> 3gt<CR>
nnoremap <silent>    <A-4> 4gt<CR>
nnoremap <silent>    <A-5> 5gt<CR>
nnoremap <silent>    <A-6> 6gt<CR>
nnoremap <silent>    <A-7> 7gt<CR>
nnoremap <silent>    <A-8> 8gt<CR>

nnoremap <silent> <A-t> :$tabnew<CR>
nnoremap <silent> <A-n> :$tabnew<CR>
nnoremap <silent> <A-w> :tabclose<CR>
nnoremap <silent> <A-tab> :tabn<CR>
nnoremap <silent> <A-S-tab> :tabp<CR>
nnoremap <silent> <A-0> :tabonly<CR>

nnoremap <silent> <A-<> :-tabmove<CR>
nnoremap <silent> <A->> :+tabmove<CR>



" *** SNIPPETS ***
let g:UltiSnipsSnippetDirectories=['/home/d/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



" *** MOST SETTINGS ***
set number
"set relativenumber
set noswapfile
set fileformat=unix
set backspace=indent,eol,start					" backspace setup
set clipboard+=unnamedplus						" clipboard
set mouse=a
set encoding=UTF-8
set fillchars+=stl:\ ,stlnc:\
set scrolloff=7
"set autochdir
set splitbelow
set splitright
" TABS
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
"set termguicolors

set colorcolumn=79

syntax on
"set t_Co=256
set cursorline

set completeopt=menu,menuone,noselect



" STATUS BAR
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}


set statusline+=\ %n\								" buffer number
set statusline+=%#Visual#							" colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#							" colour
set statusline+=%R									" readonly flag
set statusline+=%M									" modified [+] flag
set statusline+=%#Cursor#							" colour
set statusline+=%#CursorLine#						" colour
set statusline+=\ %t\								" short file name
set statusline+=%=									" right align
set statusline+=%#CursorLine#						" colour
set statusline+=\ %Y\								" file type
set statusline+=%#CursorIM#							" colour
set statusline+=\ %3l:%-2c\							" line + column
set statusline+=%#Cursor#							" colour
set statusline+=\ %3p%%\							" percentage



" *** LUA ***
lua <<EOF
 -- TABS --
require("tabby").setup({
    tabline = require("tabby.presets").active_wins_at_tail,
})

 -- TREESITTER --
require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	sync_install = false,
	ignore_install = { "javascript" },
	highlight = {
		enable = true,
		disable = { "c", "rust" },
		additional_vim_regex_highlighting = false,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},

		swap = {
			enable = true,
			swap_next = {
				["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			},
		},

		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
	},
}

 -- AUTOPAIRS --
require('nvim-autopairs').setup{}

 -- HOTKEYS --
require("which-key").setup{}

 -- AUTOSAVE --
require("autosave").setup({
	enabled = true,
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
})


 -- AUTOCOMLETE --
local cmp = require'cmp'
cmp.setup {
	completion = {
		autocomplete = false
		},
	snippet = {
		expand = function(args)
		vim.fn["UltiSnips#Anon"](args.body)
	end,
	},
mapping = {
	['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
	['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
	['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
	['<C-y>'] = cmp.config.disable, 
	['<C-e>'] = cmp.mapping({
	i = cmp.mapping.abort(),
	c = cmp.mapping.close(),
	}),
['<CR>'] = cmp.mapping.confirm({ select = true }), 
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
}

  cmp.setup.filetype('gitcommit', {
	  sources = cmp.config.sources({
	  { name = 'cmp_git' }, 
	  }, {
	  { name = 'buffer' },
	  })
  })

  cmp.setup.cmdline('/', {
	  sources = {
		  { name = 'buffer' }
		  }
	  })

  cmp.setup.cmdline(':', {
	  sources = cmp.config.sources({
	  { name = 'path' }
	  }, {
	  { name = 'cmdline' }
	  })
  })

  -- LSPCONFIG
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['pyright'].setup {
	  capabilities = capabilities
	  }
EOF
