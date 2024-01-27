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
  
  config = function()
    local cmp = require('cmp')

    local luasnip = require('luasnip')

    cmp.setup {
      completion = {
        completeopt = "menu,menuone,insert"
      },

      experimental = {
        ghost_text = true
      },

      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },

      sources = cmp.config.sources {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" }
      }
    }
  end
}
