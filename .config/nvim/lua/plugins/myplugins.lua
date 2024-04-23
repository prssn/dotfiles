local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"vue",
				"svelte",
			},
			automatic_installation = true,
		},
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require "configs.null-ls"
			end,
		},
		config = function()
			require "nvchad.configs.lspconfig"
			require "configs.lspconfig"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"yaml-language-server",
				"dockerfile-language-server",
				"html-lsp",
				"json-lsp",
				"stylua",
				"eslint_d",
				"jsonlint",
				"typescript-language-server",
			},
		},
	},
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			vim.g.copilot_assume_mapped = true
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"cappyzawa/trim.nvim",
		opts = {
			trim_last_line = false,
			trim_first_line = false,
		},
		lazy = false,
	},
}
return plugins
