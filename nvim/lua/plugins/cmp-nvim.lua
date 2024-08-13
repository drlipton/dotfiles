  return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",       -- Buffer source for nvim-cmp
      "hrsh7th/cmp-path",         -- Path source for nvim-cmp
      "hrsh7th/cmp-cmdline",      -- Cmdline source for nvim-cmp
      "saadparwaiz1/cmp_luasnip", -- LuaSnip source for nvim-cmp
      "L3MON4D3/LuaSnip",         -- Snippet engine
      "onsails/lspkind.nvim",     -- Icons for completion items
    },
    config = function()
      require("cmp").setup {
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For LuaSnip users.
          end,
        },
        mapping = {
          ['<C-p>'] = require('cmp').mapping.select_prev_item(),
          ['<C-n>'] = require('cmp').mapping.select_next_item(),
          ['<C-y>'] = require('cmp').mapping.confirm({ select = true }),
          ['<C-e>'] = require('cmp').mapping.close(),
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'luasnip' },
        },
        formatting = {
          format = require("lspkind").cmp_format({
            with_text = true,
            menu = ({
              nvim_lsp = "[LSP]",
              buffer = "[Buffer]",
              path = "[Path]",
              luasnip = "[Snippet]",
            })
          }),
        },
      }
    end,
  }
