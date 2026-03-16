return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				    component_separators = { left = '|', right = '|' },
      section_separators = { left = '', right = '' },
				globalstatus = true,
				disabled_filetypes = {
					statusline = { "dashboard", "alpha" },
				},
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },

				lualine_c = {
					{ "filename", path = 3 },
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
					"filetype",
				},

				lualine_y = {
					"progress",
				},

				lualine_z = {
					"location",
					function()
						return " " .. os.date("%R")
					end,
				},
			},

			extensions = { "neo-tree", "lazy" },
		})
	end,
}
