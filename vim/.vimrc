" Remap leader to Space
map <SPACE> <nop>
map <SPACE> <Leader>

" Don't use arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Map Ctrl-j to escape
imap <C-j> <esc>
map <C-j> <esc>

"Personal Mappings
nmap <Leader>o m`o<ESC>`` |"Add empty line below w\out entering insert mode
nmap <Leader>O m`O<ESC>`` |"Add empty line aboce w\out entering insert mode
nmap <Leader>h :wincmd h<CR> |"Jump between split windows (left)
nmap <Leader>l :wincmd l<CR> |"Jump between split windows (right)
nmap <Leader>k :wincmd k<CR> |"Jump between split windows (up)
nmap <Leader>j :wincmd j<CR> |"Jump between split windows (down)
nmap <Leader>w :wincmd o<CR> |"Close the current split
nmap <Leader>t :below term<CR> |"Open Terminal
nnoremap <Leader>m :make<CR> |"Execute default make file target
nmap <Leader>z ZZ |"Map Space Z to ZZ (save and exit)

"Fugitive Mappings
nnoremap <Leader>gs :G<CR>

"Coc Mappings
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"Custom Vim Settings
set relativenumber
set number
set nocompatible
set timeoutlen=200
set scrolloff=8
set wildmenu
set noerrorbells
set title
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set linebreak
set cursorline
set background=dark
set showcmd
set noshowmode
set autoread
set splitbelow
let &colorcolumn="80,120"

syntax enable

"Plug Package Manager
call plug#begin()

	"List of Plugins
	Plug 'vim-syntastic/syntastic'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'morhetz/gruvbox'
	Plug 'bfrg/vim-cpp-modern'
	Plug 'vim-scripts/a.vim'
    Plug 'mhinz/vim-signify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'OmniSharp/omnisharp-vim'
call plug#end()

"Syntastic Recommended Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Syntastic Custom Settings
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
let g:syntastic_c_compiler = 'gcc'

"Airline Custom Settings
"Airline Statusline
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=0
let g:airline_section_b = '%{airline_symbols.branch} %{fugitive#head()}'
let g:airline_section_z = '%{airline_symbols.maxlinenr} %l/%L : Col %c'
let g:airline_section_warning = ''

"Setting Gruvbox as the colorscheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
