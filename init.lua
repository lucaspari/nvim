vim.g.mapleader = " "
vim.keymap.set("n", "C-d", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "C-u", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>qq", ":qa<CR>")
vim.keymap.set("n", "<leader>cc", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-k>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-j>", ":bprevious<CR>", { noremap = true, silent = true })
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("v", "<C-c>", '"+y')
vim.api.nvim_set_keymap("n", "<leader>sp", ":vsplit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sh", ":split<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.opt.number = true
vim.opt.relativenumber = true
require("lucaspari")
vim.cmd(":highlight LineNr guifg=#61FFCA")
vim.opt.termguicolors = true
