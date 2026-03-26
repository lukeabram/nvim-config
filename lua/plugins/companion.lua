return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      display = {
        chat = {
          window = {
            layout = "vertical",
            position = "right",
            width = 0.23,
            full_height = true,
          },
        },
      },
    },
  },
}
