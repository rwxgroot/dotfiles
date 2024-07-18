return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", {})

		require("neo-tree").setup({
			auto_clean_after_session_restore = true,
			close_if_last_window = true,
			filesystem = {
				hijack_netrw_behavior = "open_current",
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
