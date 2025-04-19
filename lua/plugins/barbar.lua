return {
  "romgrk/barbar.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    -- { "<S-TAB>", "<cmd>BufferPrevious<cr>", desc = "Go to previous buffer" },
    { "<TAB>", "<cmd>BufferNext<cr>", desc = "Go to next buffer" },
    { "<C-x>", "<cmd>BufferClose<cr>", desc = "close the buffer" },
  },
  -- config = function()
  --   local map = vim.api.nvim_set_keymap
  --   local opts = { noremap = true, silent = true }
  --   map("n", "<S-TAB>", "<cmd>BufferPrevious<cr>", opts)
  --   map("n", "<TAB>", "<cmd>BufferNext<cr>", opts)
  --   map("n", "<C-x>", "<cmd>BufferClose<cr>", opts)
  -- end,
  -- enabled = false,
}
