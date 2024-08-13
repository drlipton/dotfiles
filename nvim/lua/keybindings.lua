-- ~/.config/nvim/lua/keybindings.lua

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal mode mappings
map('n', '<leader>e', ':Neotree toggle<CR>', opts)
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Buffer navigation
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { silent = true })

-- Optional: Open new and close buffer
vim.keymap.set('n', '<S-j>', ':enew<CR>', { silent = true })
vim.keymap.set('n', '<S-k>', ':bdelete<CR>', { silent = true })

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })

