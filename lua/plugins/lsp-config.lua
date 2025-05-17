return {
    {
        "williamboman/mason.nvim",
        config = function()
            -- setup mason with default parameters
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            -- setup mason with default parameters
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", "ts_ls", "pyright", "clangd"
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- get access to lspconfig plugin functions
            local lspconfig = require("lspconfig")

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Rust setup
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                settings = {
                    ['rust-analyzer'] = {
                        assist = {
                            importGranularity = "module",
                            importPrefix = "by_self",
                        },
                        cargo = {
                            loadOutDirsFromCheck = true
                        },
                        procMacro = {
                            enable = true
                        }
                    }
                }
            })

            -- setup the lua language server
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            -- setup the cland language server
            lspconfig.clangd.setup({
                capabilities = capabilities
            })

            -- setup the typescript language server
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })

            -- setup the python language server
            lspconfig.pyright.setup({
                capabilities = capabilities,
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = 'off'
                        }
                    }
                }
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
            vim.keymap.set("n", "<leader>cv", vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

        end
    }
}
