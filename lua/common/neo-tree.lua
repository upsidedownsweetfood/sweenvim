return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v3.x",
    dependencies = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-tree/nvim-web-devicons'},
      {'MunifTanjim/nui.nvim'}
    },
    config = function ()
      require("neo-tree").setup {
        enable_git_status = true,
        enable_diagnostics = true,

	sources = {
	  "filesystem",
	},

	source_selector = {
	  winbar = false
	},

        filesystem = {
          follow_current_file = {
            enabled = true
          }
        }
      }
    end
  }
}
