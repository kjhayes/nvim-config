-- Servers have issues with backups
vim.opt.backup=false
vim.opt.writebackup=false

-- (default is 4000ms which makes coc feel slow)
vim.opt.updatetime = 300

-- avoids weird text shifting
vim.opt.signcolumn = "yes"

local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space() 
	local col = vim.fn.col('.') - 1
	return col == 0 or vim.fn.getline('.'):sub(col,col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB" : coc#refresh()', opts)
keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "\<C-h>"]], opts)

keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

