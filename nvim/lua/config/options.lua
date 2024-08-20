-- vim.options are automatically loaded before lazy.nvim startup
-- Default vim.options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional vim.options here
--
-- Line Numbers
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Tabs and Indentation
vim.opt.tabstop = 4            -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4         -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Auto-indent new lines

-- Line Wrapping
vim.opt.wrap = false           -- Disable line wrapping

-- Search Settings
vim.opt.ignorecase = true      -- Ignore case when searching
vim.opt.smartcase = true       -- Override ignorecase if search contains capitals
vim.opt.incsearch = true       -- Show match as you type
vim.opt.hlsearch = true        -- Highlight search matches

-- Appearance
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
vim.opt.cursorline = true      -- Highlight the current line
vim.opt.signcolumn = "yes"     -- Always show the sign column to prevent text shifting

-- Backups and Undo
vim.opt.backup = false         -- Disable backup files
vim.opt.writebackup = false    -- Disable backup before overwriting a file
vim.opt.swapfile = false       -- Disable swap files
vim.opt.undofile = true        -- Enable persistent undo
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"  -- Set undo directory

-- Scrolling and Cursor Movement
vim.opt.scrolloff = 8          -- Keep 8 lines visible when scrolling
vim.opt.sidescrolloff = 8      -- Keep 8 columns visible when scrolling horizontally
vim.opt.splitright = true      -- Vertical splits open to the right
vim.opt.splitbelow = true      -- Horizontal splits open below

-- Wildmenu and Completion
vim.opt.wildmode = {"list", "longest"}  -- Show options as a list and complete longest match
vim.opt.completeopt = {"menuone", "noselect"}  -- Completion options for better experience

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Mouse Support
vim.opt.mouse = "a"            -- Enable mouse support in all modes

-- Timeout for Key Mappings
vim.opt.timeoutlen = 300       -- Time to wait for a mapped sequence to complete (in milliseconds)

-- File Encoding
vim.opt.encoding = "utf-8"     -- Set default encoding to UTF-8

-- Enable Modelines
vim.opt.modeline = true
