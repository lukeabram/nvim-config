vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Line diagnostics" })
keymap.set("n", "gd", vim.lsp.buf.definition)
keymap.set("n", "gr", vim.lsp.buf.references, { silent = true })
