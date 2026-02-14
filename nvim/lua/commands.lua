vim.api.nvim_create_user_command("F", function()
	vim.api.nvim_command("Explore")
end, {})
