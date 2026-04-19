-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("grug-far-keymap", { clear = true }),
  pattern = { "grug-far" },
  callback = function()
    -- jump back to search input by hitting left arrow in normal mode:
    -- vim.keymap.set('n', '<left>', function()
    vim.keymap.set("n", "1", function()
      vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 1, 0 })
    end, { buffer = true })
    vim.keymap.set("n", "2", function()
      vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 2, 0 })
    end, { buffer = true })
    vim.keymap.set("n", "3", function()
      vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 3, 0 })
    end, { buffer = true })
    vim.keymap.set("n", "4", function()
      vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 4, 0 })
    end, { buffer = true })
    vim.keymap.set("n", "5", function()
      vim.api.nvim_win_set_cursor(vim.fn.bufwinid(0), { 5, 0 })
    end, { buffer = true })
    -- ... whatever other keybinds you like :)
  end,
})
