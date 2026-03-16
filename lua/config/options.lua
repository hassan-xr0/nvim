vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local diagnostic_signs = {

	Error = " ",
	Warn = " ",
	Hint = "",
	Info = "",
}
vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
	signs = false,
	-- signs = {
	--   text = {
	--     [vim.diagnostic.severity.ERROR] = diagnostic_signs.Error,
	--     [vim.diagnostic.severity.WARN] = diagnostic_signs.Warn,
	--     [vim.diagnostic.severity.INFO] = diagnostic_signs.Info,
	--     [vim.diagnostic.severity.HINT] = diagnostic_signs.Hint,
	--   },
	-- },
	float = {
		border = "rounded",
	},
	severity_sort = true,
})
