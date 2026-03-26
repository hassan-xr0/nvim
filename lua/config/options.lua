local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.cursorline = true
opt.tabstop = 2
opt.softtabstop = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
opt.showmode = false
opt.laststatus = 3
opt.foldlevel = 99
opt.foldmethod = "indent"
opt.foldtext = ""
opt.linebreak = true -- Wrap lines at convenient points
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.smoothscroll = true
opt.termguicolors = true -- True color support
opt.wrap = false -- Disable line wrap
opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
	float = {
		border = "rounded",
	},
	severity_sort = true,
})
vim.api.nvim_create_autocmd("TermOpen",{
	group = vim.api.nvim_create_augroup("custom-term-open",{clear = true}),
	callback = function ()
		opt.number = false
		opt.relativenumber =false
	end
})
