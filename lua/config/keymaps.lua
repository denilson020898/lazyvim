-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true, desc = "previous buffer" })

vim.keymap.set("n", "<space>W", function()
  require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
end, { noremap = true, desc = "Launch with the current word under the cursor as the search string" })

vim.keymap.set("n", "<space>S", function()
  require("grug-far").open({
    startInInsertMode = true,
  })
end, { noremap = true, desc = "grug far search" })

vim.keymap.set("n", "<space>w", function()
  require("grug-far").open({
    prefills = {
      search = vim.fn.expand("<cword>"),
      flags = "-g !**/tests/** -g !*.po",
    },
  })
end, { noremap = true, desc = "Launch with the current word under the cursor as the search string" })

vim.keymap.set("n", "<space>s", function()
  require("grug-far").open({
    startInInsertMode = true,
    prefills = {
      flags = "-g !**/tests/** -g !*.po",
    },
  })
end, { noremap = true, desc = "grug far search" })

-- lua require('grug-far').open({ prefills = { filesFilter= '\*.py *.xml *.js' } })

vim.keymap.set("v", "<space>s", function()
  require("grug-far").with_visual_selection()
end, { noremap = true })

vim.keymap.set("n", "<space>tt", "<cmd>Telescope<cr>", { noremap = true, desc = "telescope main" })
vim.keymap.set("n", "<space>d", require("telescope.builtin").live_grep, { desc = "search by grep" })
vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files, { desc = "search files" })
vim.keymap.set("n", "<space>o", function()
  require("telescope.builtin").find_files({ cwd = require("telescope.utils").buffer_dir() })
end, { desc = "search files in cwd" })
vim.keymap.set("n", "<space>r", require("telescope.builtin").resume, { desc = "resume telescope" })
vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true, desc = "previous buffer" })
vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })

vim.keymap.set({ "n", "v" }, "<leader>M", "<cmd>HopAnywhere<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>m", "<cmd>HopWord<cr>", { noremap = true })

vim.keymap.set("n", "<space>z", "<CMD>%bd|e#|bd#<CR>", { desc = "delete all other buffer except this one" })

vim.keymap.set("n", "<space>gg", function()
  require("neogit").open()
end, { noremap = true, desc = "neogit" })

vim.keymap.set("n", "<space>c", function()
  require("treesitter-context").go_to_context()
end, { silent = true, desc = "parent treesitter context" })

vim.keymap.set("n", "zh", "35zh", { noremap = true })
vim.keymap.set("n", "zl", "35zl", { noremap = true })

vim.keymap.set("n", "<C-A-h>", "5<C-w><", { noremap = true })
vim.keymap.set("n", "<C-A-j>", "5<C-w>-", { noremap = true })
vim.keymap.set("n", "<C-A-k>", "5<C-w>+", { noremap = true })
vim.keymap.set("n", "<C-A-l>", "5<C-w>>", { noremap = true })

vim.keymap.set({ "n", "v" }, "<leader>f", function()
  require("lazyvim.util").format({ force = true })
end, { desc = "Format" })

vim.keymap.set("n", "<space>gB", "<CMD>GitBlameOpenCommitURL<CR>", { desc = "open current commit url" })
vim.keymap.set("n", "<space>gb", "<CMD>GitBlameToggle<CR>", { desc = "Git: toggle blame" })
vim.keymap.set(
  "n",
  "<space>gc",
  "<CMD>GitBlameCopySHA<CR>",
  { desc = "copies the SHA hash of current line commit into the system clipboard" }
)

vim.keymap.set("n", "<space>gF", "<CMD>GitBlameOpenFileURL<CR>", { desc = "opens the file in the default browser." })
vim.keymap.set(
  "n",
  "<space>gf",
  "<CMD>GitBlameCopyFileURL<CR>",
  { desc = "copies the file URL into the system clipboard" }
)
