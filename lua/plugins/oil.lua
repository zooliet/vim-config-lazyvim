return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup()
    -- vim.keymap.set('n', '<leader>o', oil.toggle_float, {})
    vim.keymap.set("n", "-", oil.toggle_float, {}) -- :q 로 닫기
  end,
}
