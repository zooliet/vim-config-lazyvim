return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      -- for language support
      -- @see https://biomejs.dev/internals/language-support/
      formatters_by_ft = {
        ["javascript"] = { "biome" },
        ["javascriptreact"] = { "biome" },
        ["typescript"] = { "biome" },
        ["typescriptreact"] = { "biome" },
        ["json"] = { "biome" },
        ["jsonc"] = { "biome" },
        -- ["vue"] = { "biome" },
        -- ["css"] = { "biome" },
        -- ["scss"] = { "biome" },
        -- ["less"] = { "biome" },
        -- ["html"] = { "biome" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "biome" } },
  },
}
