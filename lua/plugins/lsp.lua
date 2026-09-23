return {
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            local servers = {
                "gopls",
                "rust_analyzer",
                "ts_ls",
                "clangd",
                "jsonls",
                "yamlls",
                "lua_ls",
            }

            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local map = function(keys, func)
                        vim.keymap.set("n", keys, func, { buffer = event.buf })
                    end

                    map("gd", vim.lsp.buf.definition)
                    map("gD", vim.lsp.buf.declaration)
                    map("gr", vim.lsp.buf.references)
                    map("gi", vim.lsp.buf.implementation)
                    map("K", vim.lsp.buf.hover)
                    map("<leader>rn", vim.lsp.buf.rename)
                    map("<leader>ca", vim.lsp.buf.code_action)
                    map("<leader>e", vim.diagnostic.open_float)
                    map("[d", vim.diagnostic.goto_prev)
                    map("]d", vim.diagnostic.goto_next)
                end,
            })
        end,
    },
}
