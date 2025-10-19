return{
	{
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/lazydev.nvim",
		ft = "lua",
			opts = {
			library = {
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
			},
		},

		config = function()
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('clangd')
		vim.lsp.enable('omnisharp')
		vim.lsp.enable('cssls')
		vim.lsp.enable('html')
		vim.lsp.enable('jsonls')
		vim.lsp.enable('pyright')
		vim.lsp.enable('vimls')
		vim.lsp.enable('yamlls')
		vim.lsp.enable('yuckls')

		vim.keymap.set('n', '<M-e>', vim.lsp.buf.code_action,{})
	end,
	}
}
