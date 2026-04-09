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
      close_if_last_window = true, -- keep sidebar open
      filesystem = {
        follow_current_file = true,
        scan_by = "os",
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      git_status = {
        enable = false,
      },
      window = {
        mappings = {
            ["/"] = "filter_on_submit", 
        }   
      }
    })

    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
  end,
}
