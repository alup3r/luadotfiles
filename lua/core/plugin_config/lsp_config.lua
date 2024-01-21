require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls' }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim', 'use', 'opts'},
      },
    },
  },
}

require('lspconfig')['pyright'].setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = 'off'
      }
    }
  }
}
