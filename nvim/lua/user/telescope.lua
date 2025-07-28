local telescope = require('telescope')

telescope.setup({
  defaults = {
    layout_config = {
      horizontal = { preview_width = 0.5 },
    },
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    scroll_strategy = "cycle",
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
    },
  },
})

-- Load extensions
pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "ui-select")
