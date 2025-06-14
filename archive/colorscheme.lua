return {
    -- shorthand github url
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "rose-pine"
        vim.cmd[[highlight Normal guibg=None]]
    end
}
