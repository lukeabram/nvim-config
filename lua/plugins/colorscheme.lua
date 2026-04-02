return {{
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      theme = "wave", -- wave, dragon, lotus
      transparent = false,
    })
    vim.cmd("colorscheme kanagawa")
  end,
}}
