return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {desc = "[F]ind [F]iles"})
		vim.keymap.set('n', '<leader>fw', require("telescope.builtin").live_grep, {desc = "[F]ind [W]ords"})
	end
}
