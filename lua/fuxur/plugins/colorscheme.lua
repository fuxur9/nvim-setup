return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  init = function()
    vim.g.nord_italic = false
  end,
  config = function()
    vim.cmd("colorscheme nord")
  end
}
