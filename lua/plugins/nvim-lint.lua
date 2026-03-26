return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	-- keys = {
	-- {"<leader>cl", function() require("lint").try_lint()end, mode={"n","x"},desc="Lint Code"},
	-- },
	opts = {
		linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			json = { "jsonlint" },
			css = { "eslint_d" },
			html = { "eslint_d" },
			markdown = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
		},
	},
	config = function()
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
