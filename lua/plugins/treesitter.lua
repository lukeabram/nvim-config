return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = { "python", "lua", "c", "cpp" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

