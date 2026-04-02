return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup()

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files)
    vim.keymap.set("n", "<leader>fg", builtin.live_grep)
     vim.keymap.set("n", "<leader>fh", builtin.oldfiles, { desc = "Recently opened files" })
    vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Frecency/MRU" })
    vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Jump to bookmarks" })
end,
}
