return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      no_italic = true,
      no_bold = true,
    },
    init = function()
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
