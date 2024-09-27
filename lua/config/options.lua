vim.opt.number = true -- display line numbers
vim.opt.relativenumber = true -- display relative numbers
vim.opt.numberwidth = 2 -- set width of line number column
vim.opt.signcolumn = "yes" -- always show sign columns
vim.opt.wrap = false -- display lines as single line
vim.opt.scrolloff = 10 -- number of lines to keep above/below cursor
vim.opt.sidescrolloff = 8 -- number of columns to keep left/right of cursor


-- Tab spacing/behavior
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
vim.opt.tabstop = 4 -- number of spaces inserted for tab character
vim.opt.softtabstop = 4 -- number of spaces inserted for <TAB> key
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation
vim.api.nvim_set_option_value("colorcolumn", "80", {})


-- General Behaviors
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.backup = false -- disable backup file creation
vim.opt.clipboard = "unnamedplus" -- enable system clipboard access
vim.opt.conceallevel = 0 -- show concealed characters in md files
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.showmode = false -- hide mode display
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.writebackup = false -- prevent editing of files being edited elsewhere


-- Searching behaviors
vim.opt.hlsearch = false -- highlight all matches in search
vim.opt.incsearch = true
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- match case if explicitly stated
