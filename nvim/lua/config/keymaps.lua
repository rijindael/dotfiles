vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", ",<Space>", ":nohlsearch<CR>", { noremap = true })
vim.keymap.set("n", ",q", "<CMD>q<CR>", { noremap = true })
vim.keymap.set("n", ",w", "<CMD>w<CR>", { noremap = true })

-- Переключение вкладок
vim.keymap.set("n", "H", "gT", { noremap = true })
vim.keymap.set("n", "L", "gt", { noremap = true })

-- Telescope
vim.keymap.set("n", ",f", ":Telescope find_files<CR>", { noremap = true })
vim.keymap.set("n", ",g", ":Telescope live_grep<CR>", { noremap = true })

-- NeoTree hotkeys
vim.keymap.set("n", ",t", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ",l", ":Neotree filesystem reveal<CR>", { noremap = true, silent = true })

-- create vertical tab
vim.keymap.set("n", ",s", "<CMD>vsplit<CR>", { noremap = true, silent = true })

-- Window Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
