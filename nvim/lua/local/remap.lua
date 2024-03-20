
-- (To note: I don't want to override any existing commands ever)
-- (         I want someone who can use standard vim to be able to use my laptop without issue)

-- Alternative to <esc>
vim.keymap.set({"n","i","v"}, "<A-;>", "<esc>")
vim.keymap.set("t", "<A-;>", "<C-\\><C-n>")

-- Alternative to <C-d> and <C-u>
vim.keymap.set("n", "<A-j>", "<C-d>")
vim.keymap.set("n", "<A-k>", "<C-u>")
vim.keymap.set("n", "<A-h>", "0")
vim.keymap.set("n", "<A-l>", "$")

-- Allow movement in insert mode
vim.keymap.set("i", "<A-j>", "<esc>ji")
vim.keymap.set("i", "<A-k>", "<esc>ki")
vim.keymap.set("i", "<A-l>", "<esc>li")
vim.keymap.set("i", "<A-h>", "<esc>hi")

-- Open File Explorer
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

-- Window Creation
vim.keymap.set("n", "<leader>wnj", "<C-w>S<C-w>j")
vim.keymap.set("n", "<leader>wnk", "<C-w>S")
vim.keymap.set("n", "<leader>wnl", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>wnh", "<C-w>v")

-- Window Movement
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wh", "<C-w>h")

-- Terminal Creation
vim.keymap.set("n", "<leader>tnj", "<C-w>S<C-w>j:term<CR>i")
vim.keymap.set("n", "<leader>tnk", "<C-w>S:term<CR>i")
vim.keymap.set("n", "<leader>tnl", "<C-w>v<C-w>l:term<CR>i")
vim.keymap.set("n", "<leader>tnh", "<C-w>v:term<CR>i")

-- Terminal Movement
vim.keymap.set("n", "<leader>tj", "<C-w>ji")
vim.keymap.set("n", "<leader>tk", "<C-w>ki")
vim.keymap.set("n", "<leader>tl", "<C-w>li")
vim.keymap.set("n", "<leader>th", "<C-w>hi")

-- Terminal Mode Exit
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

