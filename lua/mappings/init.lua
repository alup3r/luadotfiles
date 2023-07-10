-- Keymappings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Preserver copy
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", opts)
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)
vim.keymap.set("n", "<leader>l", "<C-w>l", opts)

-- FZF mappings
vim.keymap.set("n", "<C-p>", ":Files<CR>", opts)

-- Undotree mappings
vim.keymap.set("n", "<leader>n", ":UndotreeToggle<CR>", opts)

-- Git mappings
vim.keymap.set("n", "<leader>gh", ":diffget //3<CR>", opts)
vim.keymap.set("n", "<leader>gu", ":diffget //2<CR>", opts)
vim.keymap.set("n", "<leader>gs", ":G<CR>", opts)

-- new buffer
vim.keymap.set("n", "<Leader>pp", ":wincmd n<CR>", opts)

-- vimwikitodo
vim.keymap.set("n", "<Leader>to", ":VimwikiToggleListItem<CR>", opts)

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
