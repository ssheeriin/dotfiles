vim.o.background = "light"						          -- for light/dark color schemes
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.softtabstop = 2                         -- insert 2 spaces for a tab when editing
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true   			                  -- set numbered lines
vim.opt.relativenumber = true                  	-- set relative numbered lines
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.cmdheight = 1                           -- space in the neovim command line for displaying messages
vim.o.laststatus = 2 							              -- status bar width
vim.o.guifont = "JetBrainsMono Nerd Font Mono:h14"  -- set the font for GUI applications
vim.opt.scrolloff = 8                           -- minimal number of screen lines to keep above and below the cursorline
vim.opt.linespace = 1                           -- space between lines

-- neovide specific
if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"     -- cursor effects in neovide_cursor_vfx_mode
  vim.g.neovide_opacity = 0.95                  -- neovide_transparency
end
