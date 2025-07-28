-- require("nvim-treesitter.install").prefer_git = true  --use git instead of curl (default) 
local configs = require("nvim-treesitter.configs")
configs.setup {
  --  ignore_install = { "gdshader", "norg", "scala" },
  --  ensure_installed = "all",
  -- had issue with some parsers so installing only i need
  ensure_installed = {
    "lua", "python", "json", "yaml", "bash", "markdown", "html", "css", "javascript"
  },
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
}
