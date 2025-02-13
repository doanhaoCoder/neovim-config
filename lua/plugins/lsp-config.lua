return {
    {   "williamboman/mason.nvim",  config = true   },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function ()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls" },
            }
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup {
                -- Server-specific settings. See `:help lspconfig-setup`
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                    },
                },
            }
        end
    }
}
