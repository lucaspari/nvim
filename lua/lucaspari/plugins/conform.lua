return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- Use a sub-list to run only the first available formatter
				javascript = { { "prettierd", "prettier" } },
				go = { "golangcilint", "gofmt", "goimport" },
				tf = { "tflint" },
			},
		})

		local normalMode = "n"

		vim.keymap.set(normalMode, "<leader>fc", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "[F]ormat" })
	end,
}
