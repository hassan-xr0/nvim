return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }, -- solve the error with word vim
						},
						workspace = { -- this tells our config file so that it know what vim is
							library = {
								vim.fn.expand("$VIMRUNTIME/lua"),
								vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
							},
						},
					},
				},
			})
		end,
	},
}
