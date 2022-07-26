vim.cmd[[
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
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'jiangmiao/auto-pairs'
        Plug 'romgrk/nvim-treesitter-context'
        Plug 'simrat39/rust-tools.nvim'
        Plug 'onsails/lspkind.nvim'
        Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
        Plug 'akinsho/toggleterm.nvim', { 'tag' : 'v2.*' }
    call plug#end()
]]
