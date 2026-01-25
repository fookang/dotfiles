local keymap = vim.keymap

-- set leader
vim.g.mapleader = " "
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { desc = "Clear Space key" })

-- buffers
keymap.set("n", "<S-l>", "<Cmd>bnext<CR>", { desc = "Switch to next buffer" })
keymap.set("n", "<S-h>", "<Cmd>bprevious<CR>", { desc = "Switch to previous buffer" })
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


keymap.set("n", "<leader>t", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
