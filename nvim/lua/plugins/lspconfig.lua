-- ~/.config/nvim/lua/plugins/lspconfig.lua
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },  -- Use appropriate events for loading LSP
  dependencies = {
    "williamboman/mason-lspconfig.nvim", -- Automatically install LSP servers using Mason
  },
  opts = function()
    return {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
        },
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "✗",
            [vim.diagnostic.severity.WARN] = "▲",
            [vim.diagnostic.severity.HINT] = "⚑",
            [vim.diagnostic.severity.INFO] = "",
          },
        },
      },
      inlay_hints = {
        enabled = true,
        exclude = { "vue" },
      },
      codelens = {
        enabled = false,
      },
      document_highlight = {
        enabled = true,
      },
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
      servers = {
        -- Configure the servers you need
        pyright = {},   -- Python
        clangd = {},    -- C/C++
        rust_analyzer = {}, -- Rust
        bashls = {},    -- Bash
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              codeLens = {
                enable = true,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
      },
      setup = {
        -- You can specify setup logic for individual servers or use the wildcard "*" to apply to all servers
      },
    }
  end,
  config = function(_, opts)
    -- Setup the diagnostics and capabilities
    vim.diagnostic.config(opts.diagnostics)

    local servers = opts.servers
    local capabilities = vim.tbl_deep_extend(
      "force",
      vim.lsp.protocol.make_client_capabilities(),
      opts.capabilities
    )

    -- Setup individual servers
    local function setup(server)
      local server_opts = vim.tbl_deep_extend("force", {
        capabilities = vim.deepcopy(capabilities),
      }, servers[server] or {})
      require("lspconfig")[server].setup(server_opts)
    end

    -- Ensure servers are installed using mason-lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = vim.tbl_keys(servers),
      handlers = { setup },
    })
  end,
}

