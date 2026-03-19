return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
				disabled_filetypes = {
					statusline = { "dashboard", "alpha" },
				},
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },

				lualine_c = {
					-- { "filename", path = 3 },
					{
						"diagnostics",
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
						on_click = function()
							vim.cmd("Telescope diagnostics")
						end,
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{ "filename", path = 3 , padding= {left = 0, right = 1}},
				},

				lualine_x = {
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
				},
				lualine_y = {
					{ "progress", separator = " ", padding = { left = 1, right = 0 } },
					{ "location", padding = { left = 0, right = 1 } },
				},
				lualine_z = {
					function()
						return " " .. os.date("%R")
					end,
				},
			},

			extensions = { "neo-tree", "lazy" },
		})
	end,
}
