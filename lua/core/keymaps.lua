vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", opts)
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)
vim.keymap.set("n", "<leader>l", "<C-w>l", opts)

-- FZF mappings
vim.keymap.set("n", "<C-p>", ":Files<CR>", opts)
vim.keymap.set("n", "<C-y>", ":set invnumber invrelativenumber<CR>", opts)

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Undotree mappings
vim.keymap.set("n", "<leader>n", ":UndotreeToggle<CR>", opts)
