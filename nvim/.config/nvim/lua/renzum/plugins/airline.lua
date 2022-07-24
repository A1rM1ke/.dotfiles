local global = vim.g

global['airline#extensions#branch#enabled'] = 1
global['airline_section_b'] = '%{airline_symbols.branch} %{FugitiveHead()}'
global['airline_section_z'] = '%{airline_symbols.maxlinenr} %l/%L : Col %c'
global['airline_section_warning'] = ''
global['airline_section_error'] = ''
global['airline#extensions#tabline#enabled'] = 1
global['airline#extensions#tabline#fnamemod'] = ':t'
