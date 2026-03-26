return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      window = {
        layout = "vertical",
        width = 0.23,
      },
    },
    config = function(_, opts)
      vim.opt.splitright = true
      require("CopilotChat").setup(opts)
    end,
  },
}
