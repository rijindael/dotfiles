local set = vim.keymap.set
local map = vim.api.nvim_set_keymap
local silent_opts = { noremap = true, silent = true }
local opts = { noremap = true }

set("n", ",<Space>", ":nohlsearch<CR>", opts)
set("n", ",q", "<CMD>q<CR>", opts)
set("n", ",w", "<CMD>w<CR>", opts)
