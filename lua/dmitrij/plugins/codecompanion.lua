return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			-- this config assumes you have OPENAI_API_KEY environment variable set
			chat = {
				save_chat = true, -- speichert automatisch als Markdown
				keymaps = {
					close = { "<Esc>" },
				},
				popup_input = {
					submit = "<C-Enter>",
				},
				popup_window = {
					border = {
						style = "single",
					},
					win_options = {
						winblend = 0,
					},
					relative = "editor", -- wichtig!
					position = "right", -- rechts anzeigen
					size = {
						height = "100%",
						width = "40%",
					},
				},
			},
			openai_params = {
				-- NOTE: model can be a function returning the model name
				-- this is useful if you want to change the model on the fly
				-- using commands
				-- Example:
				-- model = function()
				--     if some_condition() then
				--         return "gpt-4-1106-preview"
				--     else
				--         return "gpt-3.5-turbo"
				--     end
				-- end,
				model = "gpt-4.1-nano-2025-04-14",
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 4095,
				temperature = 0.2,
				top_p = 0.1,
				n = 1,
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim", -- optional
		"nvim-telescope/telescope.nvim",
	},
}
