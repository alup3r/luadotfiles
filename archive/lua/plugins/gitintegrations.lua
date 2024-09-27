return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gh", ":G commit<CR>", {})
            vim.keymap.set("n", "<leader>gu", ":diffget //2<CR>", {})
            vim.keymap.set("n", "<leader>gs", ":G<CR>", {})
            vim.keymap.set("n", "<leader>gi", ":G push<CR>", {})

        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
        end
    }
}
