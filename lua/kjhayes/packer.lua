-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use 'mhartington/oceanic-next'

	use {'neoclide/coc.nvim', branch='release'}
end)
