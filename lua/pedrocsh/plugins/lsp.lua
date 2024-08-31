return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      {
        "j-hui/fidget.nvim",
        opts = {}
      },
      "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls"
        }
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()

      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local handlers = {
        function (server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities
          })
        end,
        ["lua_ls"] = function ()
          local lspconfig = require("lspconfig")

          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" }
                }
              }
            }
          }
        end,
      }

      require("mason-lspconfig").setup_handlers(handlers)
    end
  }
}
