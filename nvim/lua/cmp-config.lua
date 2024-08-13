local cmp = require('cmp')
local lspconfig = require('lspconfig')

-- Setup nvim-cmp.
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For LuaSnip users.
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.close(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' },
  },
  formatting = {
    format = require('lspkind').cmp_format({
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

-- Setup LSP servers.
local lsp_flags = {
  debounce_text_changes = 150,
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Python LSP
lspconfig.pyright.setup {
  flags = lsp_flags,
  capabilities = capabilities,
}

-- C/C++ LSP
lspconfig.clangd.setup {
  flags = lsp_flags,
  capabilities = capabilities,
}
