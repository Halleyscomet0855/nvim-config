return {
	"jakewvincent/mkdnflow.nvim",
	config = function()
		require("mkdnflow").setup({
      links = {
        style = 'wiki',
        name_is_source = true,
        conceal = true,
      },
      perspective = {
        priority = "root",
        root_tell = "Guild Base.md"
      }
		})
	end,
}
