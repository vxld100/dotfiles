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

keymap ("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap ("v", "K", ":m '>-2<CR>gv=gv", opts)

keymap ("n", "J", "mzJ'z", opts)
keymap ("n", "<C-d>", "<C-d>zz", opts)
keymap ("n", "<C-u>", "<C-u>zz", opts)
keymap ("n", "n", "nzzzv", opts)
keymap ("n", "N", "Nzzzv", opts)

keymap ("x", "<leader>p", [["_dP]], opts)
keymap ("n", "<leader>d", [["_d]], opts)
keymap ("v", "<leader>d", [["_d]], opts)

keymap ("n", "<leader>y", "\"+y", opts)
keymap ("v", "<leader>y", "\"+y", opts)

keymap ("n", "<leader>e", ":Ex <cr>", opts)

keymap ("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

keymap ("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

keymap ("n", "Q", "<nop>", opts)
