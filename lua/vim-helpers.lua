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

-- sudo pacman -S wl-clipboard
-- Copy the absolute file path to clipboard
vim.keymap.set("n", "<leader>cp", function()
    local filepath = vim.fn.expand("%:p") -- Get the absolute file path
    vim.fn.setreg("+", filepath) -- Copy to Neovim clipboard
    vim.fn.system("echo '" .. filepath .. "' | wl-copy") -- Copy to system clipboard
    print("Copied: " .. filepath)
end, { desc = "Copy absolute path to clipboard" })

-- Copy the current line to clipboard
vim.keymap.set("n", "<leader>y", function()
    local line = vim.fn.getline(".") -- Get the current line content
    vim.fn.setreg("+", line) -- Copy to Neovim clipboard
    vim.fn.system("echo '" .. line .. "' | wl-copy") -- Copy to system clipboard
    print("Copied line: " .. line)
end, { desc = "Copy current line to clipboard" })

-- Copy the selected text in Visual mode
vim.keymap.set("v", "<leader>y", function()
    vim.cmd('normal! "+y') -- Copy selection to Neovim clipboard
    local selected_text = vim.fn.getreg("+") -- Get copied content
    vim.fn.system("wl-copy", selected_text) -- Copy to system clipboard
    print("Copied selection")
end, { desc = "Copy selection to clipboard" })

-- Paste content from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", function()
    local clipboard_content = vim.fn.system("wl-paste") -- Get content from clipboard
    clipboard_content = clipboard_content:gsub("\r", "") -- Remove carriage return characters
    clipboard_content = vim.split(clipboard_content, "\n") -- Split into lines
    
    vim.api.nvim_put(clipboard_content, "", true, true) -- Paste at cursor position
end, { desc = "Paste from clipboard" })

