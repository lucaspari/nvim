require("lucaspari.lazy")
require("neodev").setup({})
local ih = require("lsp-inlayhints")
ih.setup()
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>rr", function()
		vim.lsp.buf.rename()
	end, opts)
end)
require("luasnip.loaders.from_vscode").lazy_load()
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "terraformls" },
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({
				on_attach = function(client, bufnr)
					ih.on_attach(client, bufnr)
				end,
				settings = {
					gopls = {
						["ui.inlayhint.hints"] = {
							compositeLiteralFields = true,
							constantValues = true,
							parameterNames = true,
						},
					},
				},
			})
		end,
	},
})
require("lsp-zero").extend_cmp()
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_format = require("lsp-zero").cmp_format({ details = true })
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp_signature_help" },
	},
	mapping = cmp.mapping.preset.insert({
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	--- (Optional) Show source name in completion menu
	formatting = cmp_format,
})
