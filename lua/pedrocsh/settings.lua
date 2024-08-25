local globals = {
    mapleader = ' ',
    maplocalleader = ' ',
    have_nerd_font = true,
    editorconfig = true
}

local options = {
    guicursor = "",
    number = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    smarttab = true,
    autoindent = true,
    showmode = false,
    backup = false,
    breakindent = true,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    signcolumn = 'yes',
    updatetime = 250,
    timeoutlen = 300,
    inccommand = 'split',
    cursorline = true,
    scrolloff = 10,
    termguicolors = true
}

for k, v in pairs(globals) do
    vim.g[k] = v
end

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

