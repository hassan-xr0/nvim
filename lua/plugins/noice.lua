return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		-- "rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			presets = {
				command_palette = true, -- position the cmdline and popupmenu together
			},
		})
	end,
}
