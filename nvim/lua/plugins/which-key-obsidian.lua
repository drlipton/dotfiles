return {
  "folke/which-key.nvim",
  optional = true,
  opts = {
    spec = {
      {
        "<leader>o",
        group = "obsidian", -- Use 'group' instead of 'name' directly in the parent table
        { "n", "<cmd>ObsidianNew<CR>", "New Note" },
        { "s", "<cmd>ObsidianSearch<CR>", "Search Notes" },
        { "o", "<cmd>ObsidianOpen<CR>", "Open"},
        { "b", "<cmd>ObsidianBacklinks<CR>", "Backlinks"},
        { "t", "<cmd>ObsidianTags<CR>", "Tags"},
        { "d", "<cmd>ObsidianDailies<CR>", "Dailies"},
        { "a", "<cmd>ObsidianToday<CR>", "Today"},
        { "l", "<cmd>ObsidianLink<CR>", "Link"},
        { "y", "<cmd>ObsidianYesterday<CR>", "Yesterday"},
      },
    },
  },
}
