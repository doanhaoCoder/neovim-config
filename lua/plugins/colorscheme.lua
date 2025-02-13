return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin-macchiato"
        vim.cmd([[highlight ColorColumn guibg=#ead84e]])
	end,
}
