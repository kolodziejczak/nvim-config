return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = false,
                current_line_blame_opts = {
                    delay = 300,
                    virt_text_pos = "eol",
                },
                current_line_blame_formatter = " <author>, <author_time:%Y-%m-%d> · <summary>",
                signs = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "" },
                    topdelete = { text = "" },
                    changedelete = { text = "▎" },
                },
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns
                    local map = function(mode, keys, func, desc)
                        vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
                    end

                    -- Navigation
                    map("n", "]h", gs.next_hunk, "Next hunk")
                    map("n", "[h", gs.prev_hunk, "Prev hunk")

                    -- Actions
                    map("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
                    map("n", "<leader>hr", gs.reset_hunk, "Reset hunk")
                    map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")
                    map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
                    map("n", "<leader>hb", gs.toggle_current_line_blame, "Toggle blame")
                    map("n", "<leader>hd", gs.diffthis, "Diff this")
                end,
            })
        end,
    },
}
