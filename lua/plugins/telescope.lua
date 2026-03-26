return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{
				"nvim-telescope/telescope-ui-select.nvim",
				config = function()
					require("telescope").setup({
						extensions = {
							["ui-select"] = {
								require("telescope.themes").get_dropdown({}),
							},
						},
					})
					require("telescope").load_extension("ui-select")
				end,
			},
		},
		config = function()
			local tl = require("telescope")
			tl.setup({
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						".git/",
						".png",
						"jpeg",
						"jpg",
						".cache",
					},
					hidden=true,
				},
				pickers = {},
				extensions = {
					fzf = {},
				},
			})

			tl.load_extension("fzf")
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>gh", function()
				builtin.find_files({
					cwd = "~/.config/hypr/",
				})
			end)
			vim.keymap.set("n", "<leader>gw", function()
				builtin.find_files({
					cwd = "~/.config/waybar/",
				})
			end)
			vim.keymap.set("n", "<leader>gc", function()
				builtin.find_files({
					cwd = "~/.config/",
				})
			end)
			vim.keymap.set("n", "<leader>gn", function()
				builtin.find_files({
					cwd = vim.fn.stdpath("config") .. "/",
				})
			end)
			vim.keymap.set("n", "<leader>f/", function()
				builtin.find_files({
					cwd = "~/",
					hidden = true
				})
			end)
			vim.keymap.set("n", "<leader>ff", function()
				require("telescope.builtin").find_files({
					cwd = vim.fn.expand("%:p:h"),
				})
			end)
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		end,
	},
}
