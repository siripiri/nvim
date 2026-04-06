vim.keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<C-h>", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })

vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>", { desc = "Reveal filesystem on right" })
vim.keymap.set("n", "<C-n>", ":Neotree filesystem close<CR>", { desc = "Close filesystem"})

vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "<C-l>", ":lua vim.diagnostic.goto_next()", { desc = "To view error in current line"})


-- Telescope:
-- ctrl + f --> Find Files
-- ctrl + h --> Live Grep
-- --

-- Neo Tree:
-- ctrl + b --> file system reveal
-- a --> create a new file or directory
-- r --> rename a file or directory
-- d --> delete a file or directory
--
-- Neotree float git_status
-- Neotree float git_status git_base=main

-- Copy and Paste:
-- v, select lines, y -> Copy -> p -> Paste
-- ctrl + v, select block -> p -> Paste

-- To Paste from outside app
-- "+p 
-- To Copy to system board
-- "+y
-- Copy Entire File 
-- ggVGy
-- Copy Entire File to system clipboard
-- ggVG"+y
