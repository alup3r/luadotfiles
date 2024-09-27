-- Declare the path where lazy will clone plugin code
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- check to see if lazy itself has been cloned. if not clone it into the lazy.nvim dir
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", --latest stable release
        lazypath
    })
end


-- add the path to the lazy plugin repositories to the vim runtime path
vim.opt.rtp:prepend(lazypath)


-- declare options for lazy
local opts = {
    change_detection = {
        -- Don't notify when change
        notify = false
    },
    checker = {
        -- automatically check for package updates
        enabled = true,
        notify = false
    }
}


-- set vimwiki home dir
vim.cmd("let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': 'md'}]")


-- Set autocmd to open help window to the right by default
vim.cmd([[
    augroup HelpWindow
        autocmd!
        autocmd FileType help wincmd L
    augroup END
]])

-- Load the options from the config/options.lua file
require("config.options")
require("config.keymaps")

-- setup lazy
require("lazy").setup("plugins", opts)
