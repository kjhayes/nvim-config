
local lsp = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
M = {}


M.setup_server = function(server_name)
  local capabilities = cmp_nvim_lsp.default_capabilities()
  lsp[server_name].setup {
    capabilities = capabilities,
    keymap = {
      recommended = true,
      jump_to_mark = "<c-Tab>",
    },
    flags = {
      debounce_text_changed = 150,
    },
    on_attach = function(_, bufnr)

      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

    end
  }
end

return M

