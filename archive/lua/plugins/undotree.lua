return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<leader>n", ":UndotreeToggle<CR>")
    end
}
