local M = {}

function M.setup()
	vim.api.nvim_create_autocmd("BufWritePost", {
		pattern = "*",
		callback = function()
			vim.cmd("echo 'Saved!'")
		end,
	})
end

return M
