return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function ()
      require('dashboard').setup{
        theme = "hyper",
	config = {
	  header = {    
	    "",
	    "███████╗██╗    ██╗███████╗███████╗████████╗███╗   ██╗██╗   ██╗██╗███╗   ███╗",
	    "██╔════╝██║    ██║██╔════╝██╔════╝╚══██╔══╝████╗  ██║██║   ██║██║████╗ ████║",
	    "███████╗██║ █╗ ██║█████╗  █████╗     ██║   ██╔██╗ ██║██║   ██║██║██╔████╔██║",
	    "╚════██║██║███╗██║██╔══╝  ██╔══╝     ██║   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
	    "███████║╚███╔███╔╝███████╗███████╗   ██║   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
	    "╚══════╝ ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
	    ""
	  },
	  shortcut = {
	    { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
	  },
	  footer = {}
	},
	hide = {
	  statusline,
	  tabline,
	  winbar    
	}
      }
    end,
    dependencies = {{'nvim-tree/nvim-web-devicons'}}
  },
}
