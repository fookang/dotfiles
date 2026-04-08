local keymap = vim.keymap

-- set leader
vim.g.mapleader = " "
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { desc = "Clear Space key" })

-- buffers
keymap.set("n", "<S-h>", "<Cmd>bnext<CR>", { desc = "Switch to next buffer" })
keymap.set("n", "<S-l>", "<Cmd>bprevious<CR>", { desc = "Switch to previous buffer" })
keymap.set("n", "<leader>q", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
keymap.set("n", "<leader>Q", "<Cmd>BufferClose!<CR>")
keymap.set("n", "<leader>U", "<Cmd>bufdo bd<CR>") --close all

-- buffer position nav + reorder
keymap.set('n', '<A-S-h>', '<Cmd>BufferMovePrevious<CR>')
keymap.set('n', '<A-S-l>', '<Cmd>BufferMoveNext<CR>')
keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>')
keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- NvimTree
keymap.set("n", "<leader>ee", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
keymap.set("n", "<leader>ef", "<Cmd>NvimTreeFocus<CR>", {desc = "Focus file tree"})
keymap.set("n", "<leader>eh", "<Cmd>NvimTreeResize -5<CR>", { desc = "Decrease file tree size" })
keymap.set("n", "<leader>el", "<Cmd>NvimTreeResize +5<CR>", { desc = "Increase file tree size" })
keymap.set("n", "<leader>ec", "<Cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })

-- Basic command
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- AutoSession
keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
