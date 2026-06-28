-- Local plugin: in-editor markdown layer (folding, table editing, no-wrap).
-- Source lives at ~/Projects/markpreview.nvim (outside this config).
-- Complements render-markdown.nvim. Remove this file to disable it.
return {
  dir = "/home/son/Projects/markpreview.nvim",
  name = "markpreview.nvim",
  main = "markpreview",
  ft = { "markdown", "markdown.mdx" },
  opts = {},
}
