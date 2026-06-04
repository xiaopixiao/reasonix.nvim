-- reasonix.nvim
-- A Neovim plugin to integrate Reasonix CLI in a side terminal
-- Based on: https://github.com/esengine/DeepSeek-Reasonix

local M = {}

local defaults = {
  terminal = {
    command = 'reasonix',
    win = {
      position = 'right',
      width = 0.3,
      on_win = function(self)
        -- override minimal style defaults applied by snacks.nvim
        vim.wo[self.win].wrap = true               -- wrap long lines
        vim.wo[self.win].fillchars = "eob: "        -- no … at bottom
      end,
    },
    env = { TERM = 'xterm-256color' },
    start_insert = true,
    auto_insert = true,
  },
}

local config = vim.deepcopy(defaults)

---@param opts? reasonix.UserConfig
function M.setup(opts)
  config = vim.tbl_deep_extend("force", config, opts or {})

  local function open_terminal()
    local Snacks = require "snacks"
    Snacks.terminal.open(config.terminal.command, {
      start_insert = config.terminal.start_insert,
      auto_insert = config.terminal.auto_insert,
      env = config.terminal.env,
      win = config.terminal.win,
    })
  end

  vim.api.nvim_create_user_command("Reasonix", open_terminal, {
    desc = "Toggle Reasonix terminal",
  })
end

return M
