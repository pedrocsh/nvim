-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- undotree
  use 'mbbill/undotree'

  -- theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  -- lsp-zero
  use({ 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' })
  use({ 'neovim/nvim-lspconfig' })
  use({ 'hrsh7th/nvim-cmp' })
  use({ 'hrsh7th/cmp-nvim-lsp' })

  -- mason
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
end)
