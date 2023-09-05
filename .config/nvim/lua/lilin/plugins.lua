require("lazy").setup({
	"navarasu/onedark.nvim",

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	"nvim-treesitter/playground",

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},

	{
		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v2.x',
  		dependencies = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{'hrsh7th/cmp-nvim-lsp'},             -- Required
    	{'williamboman/mason.nvim'},           -- Optional
    	{'williamboman/mason-lspconfig.nvim'},
		},
	},

	"hrsh7th/nvim-cmp";
	"hrsh7th/cmp-buffer";

	"L3MON4D3/LuaSnip";
	"saadparwaiz1/cmp_luasnip";
	"rafamadriz/friendly-snippets";
})

