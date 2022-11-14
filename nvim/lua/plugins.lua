local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

local packer_bootstrap --Lua warning avoidance

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    --TPOPE Plugins
    --use 'tpope/vim-fugitive' --I'm not a fan of using git inside vim
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    --Colorschemes
    use 'morhetz/gruvbox'
    use 'Yazeed1s/minimal.nvim'

    --use 'vim-scripts/a.vim'

    --use 'mhinz/vim-signify'
    use({
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function() require('gitsigns').setup() end,
    })

    use({
        'lervag/vimtex',
        opt = true,
        ft = {'tex', 'latex'},
    })

    --use 'sirver/ultisnips'

    use {'neovim/nvim-lspconfig', config = function() require('plugins.lsp_config') end }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function() require('nvim-tree').setup({
            view = {
                adaptive_size = true,
            },
            filters = {
                dotfiles = true,
            }
        }) end,
    }

    --Snippet
    use({
        'L3MON4D3/LuaSnip',
        requires = 'saadparwaiz1/cmp_luasnip',
        config = function() require('plugins.luasnip') end,
    })
    --[[use({
        'quangnguyen30192/cmp-nvim-ultisnips',
        requires = 'sirver/ultisnips',
    })]]


    --Completion
    use({
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'onsails/lspkind.nvim',
            'saadparwaiz1/cmp_luasnip',
        },
        config = function() require('plugins.nvim_cmp') end,
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('plugins.treesitter') end
    })

    use({
        'romgrk/nvim-treesitter-context',
        requires = 'nvim-treesitter/nvim-treesitter',
        config = function() require('plugins.ts_context') end,
    })

    use 'lukas-reineke/indent-blankline.nvim'

    use ({
        'simrat39/rust-tools.nvim',
        config = function() require('plugins.rust_tools') end,
        opt = true,
        ft = "rust"
    })

    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

    use ({
        'akinsho/toggleterm.nvim',
        tag = '*',
        config = function() require('plugins.toggleterm') end,
    })

    use ({
        'windwp/nvim-autopairs',
        config = function() require('plugins.nvim_autopairs') end,
    })

    use({
        'nvim-lualine/lualine.nvim',
        config = function() require('plugins.lualine') end,
    })

    --Devtools
    use({
        'ray-x/go.nvim',
        opt = true,
        ft = "go",
        config = function () require('go').setup({
            gofmt="gofumpt"
        }) end
    })

    --Language Server Installer
    use({
        'williamboman/mason.nvim',
        config = function() require('mason').setup() end,
    })

    if packer_bootstrap then
        require('packer').sync()
    end
end)
