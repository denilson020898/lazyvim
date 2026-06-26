return {
  "MagicDuck/grug-far.nvim",
  -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
  -- additional lazy config to defer loading is not really needed...
  config = function()
    -- optional setup call to override plugin options
    -- alternatively you can set options with vim.g.grug_far = { ... }
    require("grug-far").setup({
      -- options, see Configuration section below
      -- there are no required options atm
      startInInsertMode = false,
      showCompactInputs = true,
      -- Make buffers unlisted + self-wiping when the window closes.
      -- Prevents grug-far buffers from being saved into persistence.nvim
      -- sessions and restored as broken empty buffers on next launch.
      transient = true,
      -- windowCreationCommand = 'tab split',
    })
  end,
}
