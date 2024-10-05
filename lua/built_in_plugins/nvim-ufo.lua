return {
	{
		"kevinhwang91/nvim-ufo",
		config = function()
			require("ufo").setup()
		end,
		dependencies = { "kevinhwang91/promise-async" },
	},
	{
		"luukvbaal/statuscol.nvim",
		config = function()
			local builtin = require("statuscol.builtin")
			require("statuscol").setup()
		end,
	},
}
