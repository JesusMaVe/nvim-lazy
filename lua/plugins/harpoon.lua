return {
	"theprimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		vim.keymap.set("n", "<S-m>", mark.add_file, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<Tab>", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })
	end,
}
