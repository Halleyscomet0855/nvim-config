local wk = require("which-key")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k")

vim.keymap.set("n", "<C-j>", "<C-w>j")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("t", "<C-x>", "<C-\\><C-n>")

vim.keymap.set("n", "<TAB>", ":bnext<CR>")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

wk.register({
	["<leader>"] = {
		f = {
			name = "Telescope",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			g = { "<cmd>Telescope live_grep<cr>", "Find Word" },
		},
	},
})

wk.register({
	g = {
		d = { vim.lsp.buf.hover, "Hover" },
	},
	K = { vim.lsp.buf.definition, "Define Function" },
})

wk.register({
	["<leader>"] = {
    x = {"<cmd>bdelete<cr>", "Exit Buffer"},

		c = {
			a = { vim.lsp.buf.code_action, "Define code action" },
		},
	},
})

wk.register({
	["<leader>"] = {
		g = {
			f = { vim.lsp.buf.format, "Reformat Code" },
		},
	},
})
