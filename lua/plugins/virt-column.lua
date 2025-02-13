return {
    "xiyaowong/virtcolumn.nvim",
    config = function()
        -- defaul config
        vim.g.virtcolumn_char = '┆'
        vim.g.virtcolumn_priority = 10
        -- options
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#ead84e" })
        -- keymap
        vim.keymap.set("n", "<leader>cc", function()
            vim.opt.colorcolumn = { "80", "100" }
        end)    -- on
        vim.keymap.set("n", "<leader>cx", function()
            vim.opt.colorcolumn = {}
        end)    -- off
    end
}

