-- Set Leader key to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Shorthand for keymap
local keymap = vim.keymap.set

-- ========================================
-- Basic Operations
-- ========================================

-- Save file
keymap("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
keymap("i", "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save file" })

-- Quit
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
keymap("n", "<leader>Q", "<cmd>qa<CR>", { desc = "Quit all" })

-- Save and quit
keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
keymap("n", "<leader>wq", "<cmd>wq<CR>", { desc = "Save and quit" })

-- Clear search highlighting
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- ========================================
-- macOS System Shortcuts (Cmd+C/X/V)
-- ========================================

-- Copy to system clipboard (Cmd+C)
keymap("v", "<D-c>", '"+y', { desc = "Copy to clipboard" })
keymap("n", "<D-c>", '"+yy', { desc = "Copy line to clipboard" })

-- Cut to system clipboard (Cmd+X)
keymap("v", "<D-x>", '"+d', { desc = "Cut to clipboard" })
keymap("n", "<D-x>", '"+dd', { desc = "Cut line to clipboard" })

-- Paste from system clipboard (Cmd+V)
keymap("n", "<D-v>", '"+p', { desc = "Paste from clipboard" })
keymap("i", "<D-v>", '<C-r>+', { desc = "Paste from clipboard" })
keymap("v", "<D-v>", '"+p', { desc = "Paste from clipboard" })

-- ========================================
-- Window Management
-- ========================================

-- Split windows
keymap("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
keymap("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontal" })
keymap("n", "<leader>sc", "<C-w>c", { desc = "Close window" })
keymap("n", "<leader>so", "<C-w>o", { desc = "Close other windows" })

-- Navigate between windows (Ctrl + hjkl)
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to down window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to up window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize windows
keymap("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- ========================================
-- Buffer Management
-- ========================================

-- Switch buffers
keymap("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Close buffer
keymap("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close buffer" })

-- ========================================
-- Text Editing
-- ========================================

-- Move selected lines up/down in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page" })

-- Keep cursor centered when searching
keymap("n", "n", "nzzzv", { desc = "Next search result" })
keymap("n", "N", "Nzzzv", { desc = "Previous search result" })

-- ========================================
-- Indentation
-- ========================================

-- Stay in indent mode
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- ========================================
-- Quick Actions
-- ========================================

-- Select all
keymap("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Quick line navigation
keymap("n", "H", "^", { desc = "Go to first non-blank char" })
keymap("n", "L", "$", { desc = "Go to end of line" })

-- Terminal toggle
keymap("n", "<leader>t", "<cmd>terminal<CR>", { desc = "Open terminal" })

