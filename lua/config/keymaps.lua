local opts = { noremap = true, silent = true }

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "-", "<CMD>Oil<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Terminal
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Ventanas
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Moverse entre ventanas fácilmente (sin Ctrl+w)
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Mover líneas fácilmente (Shift + k/j)
vim.api.nvim_set_keymap("n", "<S-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Hacer que 'n' y 'N' mantengan la búsqueda centrada
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })

-- Abrir un nuevo terminal en un split horizontal
vim.api.nvim_set_keymap("n", "<leader>t", ":split | terminal<CR>", { noremap = true, silent = true })

-- Select whole file
vim.keymap.set("n", "<leader>sa", "ggVG")

-- Remove highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")         -- Go to Definition
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")     -- Go to Implementation
vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")      -- Rename Symbol
vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>") -- Code Actions
vim.keymap.set("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>")    -- Type Definition
vim.keymap.set("n", "Ñ", "<cmd>lua vim.lsp.buf.signature_help()<CR>")      -- Signature Help
