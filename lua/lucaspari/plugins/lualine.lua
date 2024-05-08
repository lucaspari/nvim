return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/lsp-status.nvim" },
	config = function()
		-- Lua
		-- LSP clients attached to buffer
		local clients_lsp = function()
			local bufnr = vim.api.nvim_get_current_buf()

			local clients = vim.lsp.buf_get_clients(bufnr)
			if next(clients) == nil then
				return ""
			end

			local c = {}
			for _, client in pairs(clients) do
				table.insert(c, client.name)
			end
			return "\u{f085} " .. "LSP [" .. table.concat(c, "|") .. "]"
		end
		require("lualine").setup({
			options = {
				-- ... your lualine config
				theme = "catppuccin",
				-- ... your lualine config
			},
			sections = {
				lualine_x = { clients_lsp },
			},
		})
	end,
}
