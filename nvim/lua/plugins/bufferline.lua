return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.keymap.set("n", "<S-b>", ":BufferLinePick<CR>", {})
		vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", {})
		vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", {})

		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				numbers = "ordinal",
				always_show_bufferline = false,
				indicator = {
					icon = "",
					style = "icon",
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = false,
					},
				},
			},
		})
	end,
}
