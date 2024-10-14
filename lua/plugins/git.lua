return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            -- setup gitsign with default properties
            require("gitsigns").setup({})

            -- set a vim motion to <Space> + g + h to preview changes to the 
            -- file under the cursor in normal mode
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {
                desc="[G]it Preview [H]unk"
            })
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            -- set a vim motion to <Space> + g + b to view the most recent 
            -- contributers to the file
            vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", {
                desc="[G]it [B]lame"
            })
            vim.keymap.set("n", "<leader>gA", ":Git add .<CR>", {desc = "[G]it [A]dd [A]ll"})
            vim.keymap.set("n", "<leader>ga", ":Git add", {desc = "[G]it [A]dd"})
            vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {desc = "[G]it [C]ommit"})
            vim.keymap.set("n", "<leader>gp", ":Git push<CR>", {desc = "[G]it [P]ush"})
        end
    }
}
