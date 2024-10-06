local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "common" },
		{ import = "plugins" }
	},
})

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.smartindent = false
vim.opt.cmdheight = 0
vim.opt.termguicolors = true
vim.wo.number = true
vim.opt.fillchars = {
	vert = " ",
}

vim.diagnostic.config({
	virtual_text = true,
})

vim.cmd([[colorscheme dracula]])

if vim.g.neovide == true then
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
	vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
	vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
end
