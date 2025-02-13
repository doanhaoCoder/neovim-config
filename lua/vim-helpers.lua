vim.api.nvim_set_keymap("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true }) 

vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", { noremap = true, silent = true }) 
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { noremap = true, silent = true }) 
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { noremap = true, silent = true }) 
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", { noremap = true, silent = true }) 

vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })

