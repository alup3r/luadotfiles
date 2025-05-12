return {
    -- shorthand github url
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "nord"
        vim.cmd[[highlight Normal guibg=None]]
    end
}
