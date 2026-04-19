return {
  "smoka7/hop.nvim",
  -- tag = "*", -- optional but strongly recommended
  branch = "master", -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
  end,
}
