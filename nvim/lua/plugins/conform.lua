return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", stop_after_first = true },
				typescript = { "prettierd", stop_after_first = true },
				html = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
			},

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
		})
	end,
}
