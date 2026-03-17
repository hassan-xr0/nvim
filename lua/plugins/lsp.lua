return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		opts = {
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"eslint",
				"jsonls",
				"bashls",
			},
		},
		config = function(_, opts)
			local blink = require("blink.cmp")
			local capabilities = blink.get_lsp_capabilities()

			for _, server in ipairs(opts.ensure_installed) do
				local config = { capabilities = capabilities }

				-- Add special Lua settings for lua_ls
				if server == "lua_ls" then
					config.settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
							workspace = {
								library = {
									vim.fn.expand("$VIMRUNTIME/lua"),
									vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
								},
							},
						},
					}
				end

				-- Setup each server using vim.lsp.config
				vim.lsp.config(server, config)
			end
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
			})
		end,
	},
}
