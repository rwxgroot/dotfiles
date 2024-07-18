return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = false,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fw", require("telescope.builtin").live_grep, { desc = "[F]ind [W]ords" })

			require("telescope").load_extension("ui-select")
		end,
	},
}
