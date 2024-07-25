return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", {})

		require("neo-tree").setup({
			window = {
				width = 50,
			},
			auto_clean_after_session_restore = true,
			close_if_last_window = true,
			filesystem = {
				hijack_netrw_behavior = "open_current",
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
			},
			default_component_configs = {
				git_status = {
					symbols = {
						unstaged = "",
					},
				},
			},
		})
	end,
}
