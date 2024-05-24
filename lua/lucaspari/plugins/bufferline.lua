return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				separator_style = "slant",
				offsets = {
					{
						filetype = "NvimTree",
					},
				},
			},
			highlights = {
				-- fill = { bg = "#24283b" }, -- Change the background color here
			},
		})
	end,
}
