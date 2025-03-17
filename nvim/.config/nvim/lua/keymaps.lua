--local opts = { noremap = true, silent = true }

local opts = { noremap = true }

vim.keymap.set("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>", opts)

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<m-tab>", "<c-6>", opts)

vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
vim.keymap.set("n", "*", "*zz", opts)
vim.keymap.set("n", "#", "#zz", opts)
vim.keymap.set("n", "g*", "g*zz", opts)
vim.keymap.set("n", "g#", "g#zz", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("x", "p", [["_dP]])

vim.cmd([[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]])
vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")

-- more good
vim.keymap.set({ "n", "o", "x" }, "<s-h>", "^", opts)
vim.keymap.set({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- tailwind bearable to work with
--vim.keymap.set({ "n", "x" }, "j", "gj", opts)
--vim.keymap.set({ "n", "x" }, "k", "gk", opts)
vim.keymap.set("n", "<leader>w", function()
	vim.wo.wrap = not vim.wo.wrap
end, opts)

--vim.api.nvim_set_vim.keymap.set("t", "<C-;>", "<C-\\><C-n>", opts)
