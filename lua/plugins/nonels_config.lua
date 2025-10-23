return {
	"nvimtools/none-ls.nvim",
	--dependencies = { "nvimtools/none-ls-extras.nvim" },

	config = function()
		local null_ls = require("null-ls")
		--local extras = require("none-ls-extras")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				--`null_ls.diagnostics.ruff,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.formatting.black,
			},
		})
		vim.keymap.set("n", "<M-l>", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<M-w>", vim.diagnostic.open_float, {})
	end,
}
