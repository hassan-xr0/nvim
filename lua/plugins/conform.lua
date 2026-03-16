return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ lsp_fallback = true })
			end,
			mode = { "n", "x" },
			desc = "Format Code",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			json = { "prettierd" },
			css = { "prettierd" },
			html = { "prettierd" },
			markdown = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
		},
		format_on_save = {
			timeout_ms = 2000,
			lsp_format = "fallback",
		},
	},
}
