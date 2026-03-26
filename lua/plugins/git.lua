return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim", -- optional, but recommended
      "nvim-telescope/telescope.nvim", -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", function() require("neogit").open() end, desc = "Open Neogit" },
    },
    config = function()
      require("neogit").setup({})
    end,
  },
}
