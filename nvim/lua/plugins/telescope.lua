return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {desc = "[F]ind [F]iles"})
	end
}
