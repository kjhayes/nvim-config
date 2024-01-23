-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
        use {
            "hrsh7th/nvim-cmp",
            requires = {
                "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
                'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
                'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
                'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
            }
        }
        use {
            'tzachar/cmp-tabnine',
            run = './install.sh',
            requires = 'hrsh7th/nvim-cmp'
        }
end)
