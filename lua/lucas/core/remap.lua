vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set('n', '<leader>c', ':bdelete<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>sp', ':split<CR>')
vim.keymap.set('n', '<leader>Q', ':q!<CR>')
vim.keymap.set('v','<C-c>', '"+y')
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
-- Function to move the current line up
-- Normal mode mappings
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap('x', '<A-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<A-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

