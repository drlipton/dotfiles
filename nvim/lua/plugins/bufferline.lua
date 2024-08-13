-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",  -- Optional dependency for icons
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- Set to "tabs" if you want tab mode
        numbers = "none", -- Options: "none", "ordinal", "buffer_id", "both"
        close_command = "bdelete! %d", -- Command to close a buffer
        right_mouse_command = "bdelete! %d", -- Close with right click
        left_mouse_command = "buffer %d", -- Go to buffer with left click
        middle_mouse_command = nil, -- Disable middle mouse click
        indicator = {
          icon = '▎', -- This is the default icon
          style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15, -- Prefix used when a buffer is deduplicated
        tab_size = 18,
        diagnostics = "nvim_lsp", -- Set to false if you don't want diagnostics
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
        show_buffer_icons = true, -- Show buffer icons
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- Whether to maintain buffer order
        separator_style = "thin", -- "slant", "thick", or "thin"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id', -- Options: 'id', 'extension', 'relative_directory', 'directory', 'tabs'
      },
    })
  end,
}

