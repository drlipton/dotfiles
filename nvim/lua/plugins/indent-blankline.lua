return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPost",
  config = function()
    require("indent_blankline").setup {
      -- You can add more configuration options here
      char = "│",
      tab_char = "│",
      show_current_context = true,
      show_current_context_start = true,
      show_end_of_line = false,
      scope = {
        show_start = false,
        show_end = false,
      },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    }
  end,
}

