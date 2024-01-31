return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	config = function()
		vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<C-w>", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<C-f>", ":Neotree buffers reveal float<CR>", {})
	end

}
