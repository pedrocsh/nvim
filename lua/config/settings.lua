local options = {
    autoread = true,
    autowrite = true,
    backup = false,
    -- cursorline = true,
    expandtab = true,
    guicursor = "",
    number = true,
    relativenumber = true,
    scrolloff = 10,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    updatetime = 250,
    shiftwidth = 4,
    smarttab = true,
    softtabstop = 0,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 300,
    wrap = false
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
