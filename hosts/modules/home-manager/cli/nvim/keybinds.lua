-- Wrapper for mapping keybindings
local function map(mode, lhs, rhs)
	local options = { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leader key to ,
map("", ",", "<Nop>")
vim.g.mapleader = ","
vim.g.maplocalleader = ","


-- move between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- move between buffers
map("n", "<S-h>", "<cmd>bprevious<cr>")
map("n", "<S-l>", "<cmd>bnext<cr>")

-- clear search with escape
map("n", "<esc>", "<cmd>noh<cr><esc>")

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
