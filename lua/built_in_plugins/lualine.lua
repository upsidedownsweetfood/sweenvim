return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local colors_insert = {
				line_background = "#282a36",
				line_foreground = "#f8f8f2",
				line_midtone = "#44475a",
				pink = "#ff79c6",
				ourple = "#bd93f9",
			}

			local cake_theme_dracula = {
				insert = {
					a = { fg = colors_insert.line_background, bg = colors_insert.pink },
					b = { fg = colors_insert.line_foreground, bg = colors_insert.line_background },
					z = { fg = colors_insert.line_foreground, bg = colors_insert.line_background },
				},
				normal = {
					a = { fg = colors_insert.line_background, bg = colors_insert.ourple },

					b = { fg = colors_insert.fg, bg = colors_insert.line_background },

					z = { fg = colors_insert.fg, bg = colors_insert.line_background },
				},
				visual = {},
				replace = {},
			}

			require("lualine").setup({
				options = {
					theme = cake_theme_dracula,
					disabled_filetypes = {
						statusline = {
							"neo-tree",
							"dashboard",
						},
					},
					section_separators = "",
					component_separators = "",
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "filename", "location" },
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "diff", "branch" },
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}
