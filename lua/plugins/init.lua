return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'vimwiki/vimwiki'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'https://github.com/mbbill/undotree.git'
    use 'tpope/vim-fugitive'
    use 'https://github.com/preservim/nerdcommenter.git'

    -- colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }
    --use 'rose-pine/neovim'

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- lsp
    use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
	-- LSP support
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'saadparwaiz1/cmp_luasnip'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-nvim-lua'},

	-- Snippets
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
    }
}

end)
