return {
	--- Uncomment the two plugins below if you want to manage the language servers from neovim
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" } },
	{ "hrsh7th/cmp-path" },
	{ "rafamadriz/friendly-snippets" },
}
