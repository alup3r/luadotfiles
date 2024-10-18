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
                    "lua_ls", "ts_ls", "jdtls", "pyright", "solargraph"
                },
            })
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            -- ensure the java debug adapter is installed
            require("mason-nvim-dap").setup({
                ensure_installed = { "java-debug-adapter", "java-test" }
            })
        end
    },
    -- utility plugin for configuring the java language server
    {
        "mfussenegger/nvim-jdtls",
        dependencies = {
            "mfussenegger/nvim-dap",
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- get access to lspconfig plugin functions
            local lspconfig = require("lspconfig")

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- setup the ruby language server
            lspconfig.solargraph.setup({
                capabilities = capabilities
            })

            -- setup the lua language server
            lspconfig.lua_ls.setup({
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


            -- set vim motion for <SPACE> + c + h to show code documentation
            -- about the code the cursor is currently over if available
            vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "[C]ode [H]over Documentation" })

            -- set vim motion for <SPACE> + c + d to go where the code/variable
            -- under the cursor was defined
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })

            -- set vim motion for <SPACE> + c + a for displaying code action
            -- suggestions for code diagnostics in both normal and visual mode
            vim.keymap.set("n", "<leader>cv", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })

            -- set vim motion for <SPACE> + c + r to display references for the
            -- code under the cursor
            vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, { desc = "[C]ode Goto [R]eferences" })

            -- set vim motion for <SPACE> + c + i to display implementations to
            -- the code under the cursor
            vim.keymap.set("n", "<leader>ci", require("telescope.builtin").lsp_implementations, { desc = "[C]ode Goto [I]mplementations" })

            -- set vim motion for <SPACE> + c + <SHIFT>R to smartly rename the
            -- code under the cursor
            vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })

            -- set vim motion for <SPACE> + c + <SHIFT>D to go where the
            -- code/object was declared in the project (class file)
            vim.keymap.set("n", "<leader>ci", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })
        end
    }
}
