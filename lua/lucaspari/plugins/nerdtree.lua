return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local apiTree = require("nvim-tree.api")
		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "l", api.node.open.edit, opts("edit node"))
			vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
		end
		-- pass to setup along with your other options
		require("nvim-tree").setup({
			---
			on_attach = my_on_attach,
			---
		})
		vim.keymap.set("n", "<M-e>", apiTree.tree.toggle, {})
	end,
}
