return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "horizontal",
      size = function()
        return math.floor(vim.o.lines * 0.3) -- 30% of screen height
      end,
      open_mapping = [[<c-\>]], -- optional VS Code style toggle
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
    },
    keys = {
      { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
    },
  },
}
