return {
	dir = "~/.config/nvim/lua/my-autosave/",
	name = "my-autosave",
	lazy = false,
	config = function()
		require("my-autosave").setup()
	end,
}
