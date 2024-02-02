return{
    {'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

        local wk = require("which-key")
        wk.register({
        f = {
          name = "Telescope",
          f = {"<cmd>Telescope find_files<cr>", "Find File" },
          g = {"<cmd>Telescope live_grep<cr>", "Find Word" },
      },{prefix = "<leader>"}
      })
    end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    },
}

