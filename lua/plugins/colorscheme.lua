return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- load before everything
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}


