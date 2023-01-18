require("kjhayes.packer")
require("kjhayes.remap")

vim.cmd([[

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" Lines
set relativenumber

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2

]]);
