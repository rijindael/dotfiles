local set = vim.keymap.set
local map = vim.api.nvim_set_keymap
local silent_opts = { noremap = true, silent = true }
local opts = { noremap = true }

set("i", "jk", "<Esc>", opts)
set("n", ",<Space>", ":nohlsearch<CR>", opts)
set("n", ",q", "<CMD>q<CR>", opts)
set("n", ",w", "<CMD>w<CR>", opts)

-- Переключение вкладок
set("n", "H", "gT", opts)
set("n", "L", "gt", opts)

-- Telescope
set("n", ",f", ":Telescope find_files<CR>", opts)
set("n", ",g", ":Telescope live_grep<CR>", opts)

-- NeoTree hotkeys
set("n", ",t", ":Neotree toggle<CR>", silent_opts)
set("n", ",l", ":Neotree filesystem reveal<CR>", silent_opts)

-- create vertical tab
set("n", ",s", "<CMD>vsplit<CR>", silent_opts)

-- Window Navigation
set("n", "<C-h>", "<C-w>h", silent_opts)
set("n", "<C-l>", "<C-w>l", silent_opts)
set("n", "<C-k>", "<C-w>k", silent_opts)
set("n", "<C-j>", "<C-w>j", silent_opts)

-- barbar hotkeys
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", silent_opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", silent_opts)

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", silent_opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", silent_opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", silent_opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", silent_opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", silent_opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", silent_opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", silent_opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", silent_opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", silent_opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", silent_opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", silent_opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", silent_opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", silent_opts)

-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", silent_opts)

-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", silent_opts)
map("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", silent_opts)

-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", silent_opts)
map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", silent_opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", silent_opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", silent_opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", silent_opts)
