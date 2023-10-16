vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.keymap.set("n","<leader>w",":w<CR>")
vim.keymap.set('n', '<leader>c', ':bdelete<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>sp', ':split<CR>')
vim.keymap.set('n','<leader>Q',':q!<CR>')
-- Function to move the current line up
function move_line_up()
    vim.api.nvim_command("m-2")
end

-- Function to move the current line down
function move_line_down()
    vim.api.nvim_command("m+")
end

-- Map Alt + j to move the line down in Normal mode
vim.api.nvim_set_keymap('n', '<M-j>', ':lua move_line_down()<CR>', { noremap = true, silent = true })

-- Map Alt + k to move the line up in Normal mode
vim.api.nvim_set_keymap('n', '<M-k>', ':lua move_line_up()<CR>', { noremap = true, silent = true })

print("deez nuts")