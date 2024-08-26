local options = {
    autoread = true,
    autowrite = true,
    backup = false,
    -- cursorline = true,
    expandtab = true,
    fileencoding = "utf-8",
    guicursor = "",
    inccommand = "split",
    linebreak = false,
    number = true,
    relativenumber = true,
    scrolloff = 10,
    smarttab = true,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    updatetime = 250,
    shiftwidth = 4,
    showmode = false,
    signcolumn = "yes",
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 300,
    wrap = false,
}

local globals = {
    mapleader = " ",
    maplocalleader = " ",
    have_nerd_font = true,
    editorconfig = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

for k, v in pairs(globals) do
    vim.g[k] = v
end

vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)
