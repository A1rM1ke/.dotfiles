

"-------------------------------Custom Mappings---------------------------------
"Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Remap Ctrl-s and to Escape
inoremap <C-s> <ESC>
noremap <C-s> <ESC>

"Copy until end of the line with Y
noremap Y v$y<ESC>

"Add empty line below w\out entering insert mode
nmap <Leader>o m`o<ESC>`` 

"Add empty line aboce w\out entering insert mode
nmap <Leader>O m`O<ESC>`` 

"Disalbe execute mode
nnoremap Q <nop>

"Window navigation mappings
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

"-----------------------------Custom Vim Settings-------------------------------
set relativenumber "Set relative line numbers
set number "Enable line numbers
set nocompatible "Disable Vim compatibility mode
set timeoutlen=200 "Set timeout length
set scrolloff=8 "Set scroll offset to 8 lines
set wildmenu "Enable wildmenu
set noerrorbells "Disable error bell
set title "Enable window title
set tabstop=4 "Set tabstop to 4 spaces
set shiftwidth=4 "Set shiftwidth to 4 spaces
set expandtab "Enable tab expansion (tabs are 4 spaces)
set incsearch "Enable incremental search
set linebreak "Enable line break
set cursorline "Enable cursor line highlight (highlight current line)
set background=dark "Enable dark background
set showcmd "Enable command line in status bar 
set noshowmode "Disable show mode
set autoread "Enable auto read
set splitbelow "Enable split below (split vertically)
"Disable auto comment on new line
set formatoptions-=r
set formatoptions-=o
set formatoptions-=c
let &colorcolumn="80,120" "Set color column to 80 and 120
set updatetime=100 "Set update time to 100ms
syntax on "Enable syntax highlighting

"-----------------------------------Plugins-------------------------------------
call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'morhetz/gruvbox'
    Plug 'vim-scripts/a.vim'
    Plug 'mhinz/vim-signify'
    Plug 'lervag/vimtex'
    Plug 'sirver/ultisnips'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    "Plug 'github/copilot.vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'jiangmiao/auto-pairs'
call plug#end()

"----------------------------------Vim-airline----------------------------------
"Airline: Enable Git branch display
let g:airline#extensions#branch#enabled=1
"Airline: Change the b section to display the current git branch
let g:airline_section_b = '%{airline_symbols.branch} %{fugitive#head()}'
"Airline: Change the format of line number display in z section
let g:airline_section_z = '%{airline_symbols.maxlinenr} %l/%L : Col %c'
"Airline: Disable the warning section
let g:airline_section_warning = ''
"Airline: Disable the error section
let g:airline_section_error = ''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"---------------------------------Color Scheme----------------------------------
"Set Gruvbox to hard
let g:gruvbox_contrast_dark = 'hard'
"Set color scheme to gruvbox
colorscheme gruvbox

set completeopt=menu,menuone,noselect
set completeopt-=wildmenu

lua require('lsp')
lua require('treesitter')
"lua require('copilot')

"Autopairs ignore single quotes in Rust files when defining reference ifetime parameters
au FileType rust let b:AutoPairs = AutoPairsDefine({"&'" : "", "<'" : ">"})

filetype plugin on
