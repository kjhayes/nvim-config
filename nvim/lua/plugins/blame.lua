return {
  "FabijanZulj/blame.nvim",
  config = function()
    require("blame").setup({
    })
    vim.keymap.set("n", "<leader>wgb", ":BlameToggle window<CR>")
    vim.keymap.set("n", "<leader>gb", ":BlameToggle virtual<CR>")
  end
}
