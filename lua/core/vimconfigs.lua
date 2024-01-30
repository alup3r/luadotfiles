-- General settings
HOME = os.getenv("HOME")

-- spacing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true


vim.o.relativenumber = true
vim.o.nu = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = HOME .. "/.config/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.scrolloff = 8
vim.api.nvim_set_option_value("colorcolumn", "80", {})
vim.cmd[[set nohlsearch]]
vim.cmd("let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': 'md'}]")
