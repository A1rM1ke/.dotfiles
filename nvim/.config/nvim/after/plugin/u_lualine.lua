--Make sure to install https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip

require('lualine').setup{
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        --componen_separators = { left = '', right = ''},
        --section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_b = {{'branch', icon = ''}, 'diff', 'diagnostics'}
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_z = {'tabs'}
    }
}
