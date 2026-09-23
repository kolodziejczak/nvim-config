return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.config").setup({
                ensure_installed = {
                    "lua",
                    "vim",
                    "vimdoc",
                    "javascript",
                    "typescript",
                    "python",
                    "bash",
                    "json",
                    "yaml",
                    "markdown",
                    "markdown_inline",
                    "go",
                    "rust",
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
