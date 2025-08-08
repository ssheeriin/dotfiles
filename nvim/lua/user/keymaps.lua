local opts = { noremap = true, silent = true }

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)

-- Quit
vim.keymap.set("n", "<C-q>", ":q<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)

-- === Navigation ===
-- Toggle file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Navigate between buffers
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
-- Close current buffer
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", opts)


-- === Telescope ===
-- Find text in files (Live Grep)
vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, opts)
-- List open buffers
vim.keymap.set("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end, opts)
-- Find files
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, opts)


-- === Commenting ===
-- Toggle comment (linewise in normal mode)
vim.keymap.set("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, opts)

-- Toggle comment (linewise in visual mode)
vim.keymap.set("v", "<leader>/", function()
  local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
  vim.api.nvim_feedkeys(esc, "nx", false)
  require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, opts)

