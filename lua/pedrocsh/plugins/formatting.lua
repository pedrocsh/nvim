return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "eslint_lsp", "prettier", stop_after_first = true },
        typescript = { "eslint_lsp", "prettier", stop_after_first = true },
        typescriptreact = { "eslint_lsp", "prettier", stop_after_first = true },
        prisma = { "prisma-language-server" },
      },
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true, css = true, json = true, jsonc = true }
        local lsp_format_opt

        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = "never"
        else
          lsp_format_opt = "fallback"
        end

        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
    },
  },
}
