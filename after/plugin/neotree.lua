vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    width = 35,
    mappings = {
      ["l"] = "open",
      ["h"] = "close_node"
    }
  }
})
