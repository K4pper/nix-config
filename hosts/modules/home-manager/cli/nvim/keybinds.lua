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
map("n", "<S-h>", "<CMD>bprevious<CR>")
map("n", "<S-l>", "<CMD>bnext<CR>")

-- clear search with escape
map("n", "<esc>", "<CMD>noh<CR><ESC>")

-- keep cursor centered when jumping
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")

-- lazygit
map("n", "<leader>lg", "<CMD>LazyGit<CR>")
