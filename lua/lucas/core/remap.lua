vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", ":bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sp", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Q", ":q!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", ":horizontal resize +1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Up>", ":horizontal resize +1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -1<CR>", { noremap = true })
vim.keymap.set("v", "<C-c>", '"+y')
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
