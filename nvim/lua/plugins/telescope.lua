return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		config = function()
			vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, {desc = "[S]earch [F]iles"})
		end
	}
}
