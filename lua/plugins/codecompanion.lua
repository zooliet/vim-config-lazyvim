return {
  "olimorris/codecompanion.nvim", -- The KING of AI programming
  enabled = false,
  dependencies = {
    "j-hui/fidget.nvim",
    {
      "Davidyz/VectorCode",
      version = "*",
      build = "pipx upgrade vectorcode",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
    -- { "echasnovski/mini.pick", config = true },
    -- { "ibhagwan/fzf-lua", config = true },
  },
  opts = {
    adapters = {
      copilot = function()
        return require("codecompanion.adapters").extend("copilot", {
          schema = {
            model = {
              default = "claude-3.7-sonnet",
            },
          },
        })
      end,
    },
    prompt_library = {},
    strategies = {
      chat = {
        adapter = "copilot",
        roles = {
          user = "hl1sqi",
        },
        keymaps = {
          send = {
            modes = {
              i = { "<C-CR>", "<C-s>" },
            },
          },
          completion = {
            modes = {
              i = "<C-x>",
            },
          },
        },
        slash_commands = {
          ["buffer"] = {
            opts = {
              keymaps = {
                modes = {
                  i = "<C-b>",
                },
              },
            },
          },
          ["help"] = {
            opts = {
              max_lines = 1000,
            },
          },
        },
        tools = {
          vectorcode = {
            description = "Run VectorCode to retrieve the project context.",
            callback = function()
              return require("vectorcode.integrations").codecompanion.chat.make_tool()
            end,
          },
        },
      },
      inline = { adapter = "copilot" },
    },
    display = {
      action_palette = {
        provider = "default",
      },
      chat = {
        -- show_references = true,
        -- show_header_separator = false,
        -- show_settings = false,
      },
      -- diff = {
      --   provider = "mini_diff",
      -- },
    },
    opts = {
      log_level = "DEBUG",
    },
  },
}
