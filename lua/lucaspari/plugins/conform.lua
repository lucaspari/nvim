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
				md = { "markdownlint" },
				java = { "checkstyle" },
			},
		})

		local normalMode = "n"

		vim.keymap.set(normalMode, "<leader>fc", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "[F]ormat" })
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf, lsp_fallback = true })
			end,
		})
	end,
}
