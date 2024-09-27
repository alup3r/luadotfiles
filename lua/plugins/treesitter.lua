return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        -- ts-autotag utilizes treesitter to understand the code structure to
        -- automatically close tsx tags
        "windwp/nvim-ts-autotag"
    },
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            highlight = { enable = true },
            auto_tag = {
                enable = true
            }
        })
    end
}
