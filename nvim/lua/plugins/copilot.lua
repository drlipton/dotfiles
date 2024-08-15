return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    vim.cmd("Copilot setup")
  end,
}

