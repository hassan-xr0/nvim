return {
	{
		"williamboman/mason-lspconfig.nvim",
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
			automatic_enable = true,
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				keys = { { "<leader>cm", "<cmd>Mason<CR>", mode = { "n", "x" }, desc = "Open Mason" } },
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettierd",
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d",
				"jsonlint",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
