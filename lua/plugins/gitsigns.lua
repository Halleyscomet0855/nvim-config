return {
  {"lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    local wk = require("which-key")

    wk.register({
      g = {
        p = {":Gitsigns preview_hunk<CR>", "Preview Hunk"
        },
        t = {":Gitsigns toggle_current_line_blame<CR>", "Toggle Line Blame"}
      },
      { prefix = "<leader>" }
    })
  end
  },
  {
    "tpope/vim-fugitive"
  }
}
