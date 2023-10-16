return {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("lazy").setup({})
        vim.cmd("nnoremap <silent> <leader>gg :LazyGit<CR>")
    end
}
