return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
    local wk = require("which-key")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
			},
		})
    wk.register({
      g = {
        f = {vim.lsp.buf.format, "Reformat Code"}},
      {prefix = "<leader>"}})

	end,
}
