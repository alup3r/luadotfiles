-- Set our leader keybinding to space
-- Anywhere you see <leader> in a keymapping specifies the space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- new buffer vertical split
vim.api.nvim_set_keymap('n', '<C-w>n', ':rightbelow vnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ll', ':vertical resize +47<CR>', { noremap = true, silent = true })

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

vim.keymap.set("n", "<C-y>", ":set invnumber invrelativenumber<CR>")

vim.keymap.set("n", "<leader>g", ":VimwikiToggleListItem<CR>")

-- Undotree mappings
vim.keymap.set("n", "<leader>n", ":UndotreeToggle<CR>")

-- TSNode run
vim.api.nvim_set_keymap('n', '<leader>hh', ':lua RunTSNode()<CR>', { noremap = true, silent = true })

function RunTSNode()
  local script = vim.fn.input('Enter script path: ')
  vim.cmd('!' .. 'ts-node ' .. script)
end

-- Python run
vim.api.nvim_set_keymap('n', '<leader>py', ':lua RunPythonScript()<CR>', { noremap = true, silent = true })

function RunPythonScript()
  local script = vim.fn.input('Enter Python script path: ')
  vim.cmd('!' .. 'python3 ' .. script)
end
