return {
	-- git wrapper
	"tpope/vim-fugitive",
	-- github wrapper
	"tpope/vim-rhubarb",
	-- unix/bash tooling
	"tpope/vim-eunuch",
	-- Detect tabstop and shiftwidth automatically
	-- 'tpope/vim-sleuth',
	-- better tabstop and shiftwidth
	{
		"FotiadisM/tabset.nvim",
		config = function()
			require("tabset").setup({
				defaults = {
					tabwidth = 2,
					expandtab = true,
				},
			})
		end,
	},
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },
	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",
}
