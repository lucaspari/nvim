return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
    config = function()
        require("Comment").setup({
            opleader = {
                ---Line-comment keymap
                line = '<C-/>',
                ---Block-comment keymap
                block = 'gb',
            },
            mappings = {
                ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                ---Extra mapping; `gco`, `gcO`, `gcA`
                extra = false,
            },
        })
    end
}
