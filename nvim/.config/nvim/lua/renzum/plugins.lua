local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    --TPOPE Plugins
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    --Colorschemes
    use 'morhetz/gruvbox'
    use 'Yazeed1s/minimal.nvim'

    --use 'vim-scripts/a.vim'

    use 'mhinz/vim-signify'

    use({
        'lervag/vimtex',
        opt = true,
        ft = {'tex', 'latex'},
    })

    use 'sirver/ultisnips'

    use {'neovim/nvim-lspconfig', config = function() require('plugins.lsp_config') end }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use { 'hrsh7th/nvim-cmp', config = function() require('plugins.nvim_cmp') end }
    use({
        'quangnguyen30192/cmp-nvim-ultisnips',
        requires = 'sirver/ultisnips',
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

    use ({
        'simrat39/rust-tools.nvim',
        config = function() require('plugins.rust_tools') end,
        opt = true,
        ft = "rust"
    })

    use 'onsails/lspkind.nvim'
    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

    use ({
        'akinsho/toggleterm.nvim',
        tag = 'v2.*',
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

    if packer_bootstrap then
        require('packer').sync()
    end
end)
