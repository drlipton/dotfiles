return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufWritePost", "InsertLeave" },  -- Replacing LazyFile with valid events
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      python = { "flake8", "pylint" },
      lua = { "luacheck" },
      c = { "cppcheck" },
      cpp = { "cppcheck" },
      rust = { "cargo" },
      bash = { "shellcheck" },
      fish = { "fish" },
    },
    linters = {
      -- Custom linter configurations can go here.
    },
  },
  config = function(_, opts)
    local lint = require("lint")
    for name, linter in pairs(opts.linters) do
      if type(linter) == "table" and type(lint.linters[name]) == "table" then
        lint.linters[name] = vim.tbl_deep_extend("force", lint.linters[name], linter)
      else
        lint.linters[name] = linter
      end
    end
    lint.linters_by_ft = opts.linters_by_ft

    local function debounce(ms, fn)
      local timer = vim.uv.new_timer()
      return function(...)
        local argv = { ... }
        timer:start(ms, 0, function()
          timer:stop()
          vim.schedule_wrap(fn)(unpack(argv))
        end)
      end
    end

    local function lint_buffer()
      lint.try_lint()
    end

    vim.api.nvim_create_autocmd(opts.events, {
      group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
      callback = debounce(100, lint_buffer),
    })
  end,
}

