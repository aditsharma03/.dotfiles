return {
	"nvimtools/none-ls.nvim",
	commit = "6be90f8cf37d7f50a89b7229412f6184b16f1b28",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

				null_ls.builtins.formatting.prettier,
				--require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>f", vim.lsp.buf.format, {})
	end,
}
