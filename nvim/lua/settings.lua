-- ~/.config/nvim/lua/settings.lua
local opt = vim.opt

-- Line Numbers
opt.number = true          -- Show absolute line numbers
opt.relativenumber = true  -- Show relative line numbers

-- Tabs and Indentation
opt.tabstop = 4            -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 4         -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true       -- Use spaces instead of tabs
opt.smartindent = true     -- Auto-indent new lines

-- Line Wrapping
opt.wrap = false           -- Disable line wrapping

-- Search Settings
opt.ignorecase = true      -- Ignore case when searching
opt.smartcase = true       -- Override ignorecase if search contains capitals
opt.incsearch = true       -- Show match as you type
opt.hlsearch = true        -- Highlight search matches

-- Appearance
opt.termguicolors = true   -- Enable 24-bit RGB colors
opt.cursorline = true      -- Highlight the current line
opt.signcolumn = "yes"     -- Always show the sign column to prevent text shifting

-- Backups and Undo
opt.backup = false         -- Disable backup files
opt.writebackup = false    -- Disable backup before overwriting a file
opt.swapfile = false       -- Disable swap files
opt.undofile = true        -- Enable persistent undo
opt.undodir = vim.fn.stdpath("data") .. "/undo"  -- Set undo directory

-- Scrolling and Cursor Movement
opt.scrolloff = 8          -- Keep 8 lines visible when scrolling
opt.sidescrolloff = 8      -- Keep 8 columns visible when scrolling horizontally
opt.splitright = true      -- Vertical splits open to the right
opt.splitbelow = true      -- Horizontal splits open below

-- Wildmenu and Completion
opt.wildmode = {"list", "longest"}  -- Show options as a list and complete longest match
opt.completeopt = {"menuone", "noselect"}  -- Completion options for better experience

-- Clipboard
opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Mouse Support
opt.mouse = "a"            -- Enable mouse support in all modes

-- Timeout for Key Mappings
opt.timeoutlen = 300       -- Time to wait for a mapped sequence to complete (in milliseconds)

-- File Encoding
opt.encoding = "utf-8"     -- Set default encoding to UTF-8

-- Enable Modelines
opt.modeline = true

