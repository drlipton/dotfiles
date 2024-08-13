-- ~/.config/nvim/init.lua

-- Set leader key and load keybindings early
require("keybindings")
-- Load settings
require("settings")
-- Install lazy.nvim if it's not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.title = true
vim.opt.titlestring = "%{expand('%:p:h')}"

-- Load plugins from the lua/plugins directory
require("plugins")
require("cmp-config")
