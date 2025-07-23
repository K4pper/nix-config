vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 20

vim.opt.cursorline = true

vim.opt.clipboard = "unnamedplus"

vim.cmd [[ autocmd BufNewFile,BufRead *.bicepparam set filetype=bicep-params ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]

vim.api.nvim_create_autocmd("FileType", {
	pattern = "nix",
	command = "setlocal shiftwidth=2 tabstop=2"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "yml",
    command = "setlocal shiftwidth=2 tabstop=2"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "yaml",
    command = "setlocal shiftwidth=2 tabstop=2"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "bicep",
    command = "setlocal shiftwidth=2 tabstop=2"
})
