return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- REQUIRED
  },

  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = true,       -- keep this
        scan_by = "os",                   -- <--- important: disables Git scanning
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,       -- you can keep this
        },
      },
      git_status = {
        enable = false,                  -- explicit, just to be sure
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
  end,
}

