-- vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })
vim.api.nvim_set_option("clipboard", "unnamed")
-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- paste over highlight word
vim.keymap.set("x", "<leader>p", '"_dP')
-- colorcolumn => virt-column 
-- vim.opt.colorcolumn = "80,100"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#ead84e" })
vim.keymap.set("n", "<leader>cc", function()
    vim.opt.colorcolumn = vim.opt.colorcolumn:get()[1] and "" or "80"
end, { desc = "Toggle ColorColumn at 80" })
