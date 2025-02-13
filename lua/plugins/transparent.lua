return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            enable = true,
            groups = {
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                'EndOfBuffer',
            },
            -- table: additional groups that should be cleared
            extra_groups = {},
            -- table: groups you don't want to clear
            exclude_groups = {},
            -- function: code to be executed after highlight groups are cleared
            -- Also the user event "TransparentClear" will be triggered
            on_clear = function() end,
        })
        require("transparent").clear_prefix('NeoTree')
        require('transparent').clear_prefix('BufferLine')
        require('transparent').clear_prefix('lualine')

        vim.cmd("highlight Normal guibg=NONE")
        vim.cmd("highlight NormalNC guibg=NONE")
        vim.cmd("highlight CursorLine guibg=NONE")
        vim.cmd("highlight LualineNormal guibg=NONE guifg=NONE")
        vim.cmd("highlight LualineInsert guibg=NONE guifg=NONE")
        vim.cmd("highlight LualineVisual guibg=NONE guifg=NONE")
        vim.cmd("highlight LualineReplace guibg=NONE guifg=NONE")
        vim.cmd("highlight LualineCommand guibg=NONE guifg=NONE")
        vim.cmd("highlight LualineInactive guibg=NONE guifg=NONE")
    end,
}

