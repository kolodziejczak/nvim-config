return {
    {
        "github/copilot.vim",
        event = "InsertEnter",
        init = function()
            vim.g.copilot_no_tab_map = true
        end,
        config = function()
            vim.keymap.set("i", "<M-l>", 'copilot#Accept("")', { expr = true, replace_keycodes = false })
            vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)")
            vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)")
        end,
    },
}
