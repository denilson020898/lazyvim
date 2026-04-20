return {
  "folke/flash.nvim", enabled = true,
  keys= {
    { "s", mode = { "n", "x", "o" }, false },
    { "S", mode = { "n", "o", "x" }, false },
    { "r", mode = "o", false },
    { "R", mode = { "o", "x" }, false },
    { "<space>e", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<space>q", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    -- { "<leader>r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "<leader>T", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  }
}
