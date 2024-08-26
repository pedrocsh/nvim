return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "bash",
            "lua",
            "c",
            "vim",
            "vimdoc"
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        },
        indent = {
            enable = true
        }
    }
}
