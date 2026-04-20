-- In your plugins/conform.lua
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      xml = { "xmlformat" },
    },
  },
}
