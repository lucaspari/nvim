return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/lsp-status.nvim" },
	config = function()
		local clients_formatter = function()
			local bufnr = vim.api.nvim_get_current_buf()
			local formatter = require("conform").list_formatters_for_buffer(bufnr)
			if next(formatter) == nil then
				return ""
			end
			local c = {}
			for _, client in pairs(formatter) do
				table.insert(c, client)
			end
			return " " .. table.concat(c, "|")
		end
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
			return "\u{f085} " .. table.concat(c, "|")
		end

		require("lualine").setup({
			options = {
				theme = "catppuccin",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = {
					"%=",
					clients_lsp --[[ add your center compoentnts here in place of this comment ]],
				},
				lualine_x = {},
				lualine_y = { clients_formatter, "filetype", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
