return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				auto_install = false,
				ensure_installed = {
					"c",
					"rust",
					"lua",
					"vim",
					"vimdoc",
					"markdown",
					"javascript",
					"typescript",
					"python",
					"html",
					"astro",
					"tsx",
					"gleam",
					"bash",
				},
				ignore_install = {},
				modules = {},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
