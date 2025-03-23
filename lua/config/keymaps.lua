vim.keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<C-h>", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })

vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", { desc = "Reveal filesystem on right" })


vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "<C-l>", ":lua vim.diagnostic.goto_next()", { desc = "To view error in current line"})
