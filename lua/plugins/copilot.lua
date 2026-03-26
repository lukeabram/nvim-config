return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth", -- triggers auth on install
    opts = {
      suggestion = {
        enabled = false, -- disable inline ghost text (better with cmp)
      },
      panel = {
        enabled = false,
      },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
