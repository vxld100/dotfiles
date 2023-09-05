local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap  ("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Better window navigation
keymap ("n", "<leader>h", "<C-w>h", opts)
keymap ("n", "<leader>j", "<C-w>j", opts)
keymap ("n", "<leader>k", "<C-w>k", opts)
keymap ("n", "<leader>l", "<C-w>l", opts)

keymap ("n", "<C-h>", ":vertical resize -2<cr>", opts)
keymap ("n", "<C-l>", ":vertical resize +2<cr>", opts)
keymap ("n", "<C-j>", ":resize +2<cr>", opts)
keymap ("n", "<C-k>", ":resize -2<cr>", opts)

-- Clipboard support
keymap ("n", "<leader>y", "\"+y", opts)
keymap ("v", "<leader>y", "\"+y", opts)

-- Lexplore
keymap ("n", "<leader>e", ":Ex <cr>", opts)

-- Make files executable
keymap ("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Show Lsp erros properly
keymap ("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
