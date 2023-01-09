return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'rose-pine/neovim'
    use 'vimwiki/vimwiki'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'https://github.com/mbbill/undotree.git'
    use 'tpope/vim-fugitive'
    use 'https://github.com/preservim/nerdcommenter.git'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
