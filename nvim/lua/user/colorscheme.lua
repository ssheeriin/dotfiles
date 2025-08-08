--require("onedark").setup {
--  style = "darker",
--  transparent = true,
--  term_colors = true,
--}
--require("onedark").load()


local colorscheme = "nightfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

