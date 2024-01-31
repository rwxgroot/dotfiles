return {
	"nvim-lualine/lualine.nvim",
	opts = function()	
		local colors = {
			fg     = '#abb2bf',
			bg     = '#282c34',
			blue   = '#66a3ff',
			red   = '#ff5c33',
			yellow = '#ffff66',
			gray1  = '#ffffff',
			gray2  = '#2c323c',
			gray3  = '#3e4452',
		}

		local onedarker= {
			normal = {
				a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
				b = { fg = colors.fg, bg = colors.gray3 },
				c = { fg = colors.fg, bg = colors.gray2 },
			},
			command = { a = { fg = colors.bg, bg = colors.gray1, gui = 'bold' } },
			insert = { a = { fg = colors.bg, bg = colors.red, gui = 'bold' } },
			visual = { a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' } }
		}

		return {
			options = {
				icons_enabled = false,
				theme = onedarker,
				component_separators = "|",
				section_separators = ""
			},
			sections = {
				lualine_a = {"mode"},
				lualine_b = {"branch", "diff", "diagnostics"},
				lualine_c = {"filename"},
				lualine_x = {"filetype"},
				lualine_y = {},
				lualine_z = {"location"}
			}
		}
	end,
}
