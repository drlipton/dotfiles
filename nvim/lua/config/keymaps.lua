-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Open new and close buffer
vim.keymap.set("n", "<S-j>", ":enew<CR>", { silent = true })
vim.keymap.set("n", "<S-k>", ":bdelete<CR>", { silent = true })

-- Telescope
--vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
--vim.keymap.set("n", "<leader><space>", ":Telescope find_files<CR>", opts)
--vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
--vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
--vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- Terminal
-- Open a terminal in a new horizontal split
vim.api.nvim_set_keymap("n", "<leader>th", ":split | terminal<CR>", { noremap = true, silent = true })

-- Open a terminal in a new vertical split
vim.api.nvim_set_keymap("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- Open a terminal in a new tab
vim.api.nvim_set_keymap("n", "<leader>tt", ":tabnew | terminal<CR>", { noremap = true, silent = true })

-- Close terminal buffer
vim.api.nvim_set_keymap("t", "<C-w>q", "<C-\\><C-n>:bd!<CR>", { noremap = true, silent = true })

-- Navigate between normal buffers and terminal buffers
vim.api.nvim_set_keymap("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })

-- Enter normal mode in terminal with <Esc>
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Switch between tabs
vim.keymap.set("n", "<C-A-h>", ":tabprevious<CR>", { silent = true })
vim.keymap.set("n", "<C-A-l>", ":tabnext<CR>", { silent = true })
