-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "c", "javascript", "lua", "python", "rust", "typescript", -- Add the languages you need
    },
    highlight = {
      enable = true, -- false will disable the whole extension
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

