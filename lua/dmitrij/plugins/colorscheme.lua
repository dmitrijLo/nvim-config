return {
	"bluz71/vim-nightfly-guicolors",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme nightfly]])
	end,
}

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		cat = require("catppuccin")
-- 		cat.setup({
-- 			transparent_background = true, -- disables setting the background color.
-- 		})
-- 		-- load the colorscheme here
-- 		vim.cmd([[colorscheme catppuccin]])
-- 	end,
-- }
