vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<Esc>", ":nohl<CR>")

keymap.set("n", "<leader>ff", "<cmd>FZF<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

keymap.set("v", "<leader>c", "<cmd>:OSCYank<cr>")
