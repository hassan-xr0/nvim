return {
	"akinsho/bufferline.nvim",
	-- enabled = false,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufline = require("bufferline")
		bufline.setup({
			options = {
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
					},
				},
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})
	end,
}
