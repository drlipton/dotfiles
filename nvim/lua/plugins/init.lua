-- ~/.config/nvim/lua/plugins/init.lua

require("lazy").setup({
  -- Load individual plugin configs
  require("plugins.catppuccin"),
  require("plugins.treesitter"),
  require("plugins.lspconfig"),
  require("plugins.telescope"),
  require("plugins.neo-tree"),
  -- Add more plugins here
})
