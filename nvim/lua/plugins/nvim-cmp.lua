return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-buffer',           -- source for text buffer
    'hrsh7th/cmp-path',             -- source for filesystem path
    'L3MON4D3/LuaSnip',             -- snippet engine
    'saadparwaiz1/cmp_luasnip',     -- for autocompletion
    'rafamadriz/friendly-snippets', -- useful snippets
  },
}
