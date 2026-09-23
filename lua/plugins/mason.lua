return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "rust_analyzer",
                    "ts_ls",
                    "clangd",
                    "jsonls",
                    "yamlls",
                    "lua_ls",
                },
                automatic_installation = true,
            })
        end,
    },
}
