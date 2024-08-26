local set = vim.keymap.set

set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
set("n", "<M-j>", ":resize -2<CR>")
set("n", "<M-k>", ":resize +2<CR>")
set("n", "<M-h>", ":vertical resize -2<CR>")
set("n", "<M-l>", ":vertical resize +2<CR>")
set("n", "<C-s>", ":w<CR>")
set("n", "<TAB>", ":bnext<CR>")
set("n", "<S-TAB>", ":bprevious<CR>")
set("v", "<", "<gv")
set("v", ">", ">gv")
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])
set({ "n", "v" }, "<leader>d", [["_d]])
set("n", "<ESC><ESC>", ":nohlsearch<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
