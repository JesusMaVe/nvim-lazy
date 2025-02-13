return {
	-- change telescope config
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
			},
		},

		opts = {
			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
					},
				},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)
			telescope.load_extension("fzf")

			vim.keymap.set(
				"n",
				"<leader>?",
				require("telescope.builtin").oldfiles,
				{ desc = "[?] Find recently opened files" }
			)
			vim.keymap.set("n", "<C-k>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>ñ", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [A]ll Files" })
			vim.keymap.set("n", "<leader>lg", require("telescope.builtin").live_grep, { desc = "[F]ind by [G]rep" })
			vim.keymap.set(
				"n",
				"<leader>fd",
				require("telescope.builtin").diagnostics,
				{ desc = "[F]ind [D]iagnostics" }
			)
		end,
	},
}
