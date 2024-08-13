-- ~/.config/nvim/lua/plugins/init.lua

require("lazy").setup({
  -- Load individual plugin configs
  require("plugins.catppuccin"),
  require("plugins.treesitter"),
  require("plugins.lspconfig"),
  require("plugins.telescope"),
  require("plugins.neo-tree"),
  require("plugins.gitsigns"),
  require("plugins.bufferline"),
  require("plugins.lualine"),
  require("plugins.vim-tmux-yank"),
  require("plugins.cmp-nvim"),
  require("plugins.copilot-chat"),
  -- Add more plugins here
})
