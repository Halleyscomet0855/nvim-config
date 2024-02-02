return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = {
          "ruff",
          "mypy",
          "isort",
          "black",
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local wk = require("which-key")

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      wk.register({
        g = {
          d = { vim.lsp.buf.hover, "Hover" },
        },
        K = { vim.lsp.buf.definition, "Define Function" },
      })
      wk.register({
        c = {
          a = { vim.lsp.buf.code_action, "Define code action" },
        },
        { prefix = "<leader>" },
      })

     --- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      ---vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      --- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
