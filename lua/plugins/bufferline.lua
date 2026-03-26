return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        offsets = {{filetype = "neo-tree", text = "", padding = 1}},
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",
      },
    })
    -- Keymaps for switching tabs/buffers
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)  -- Shift+l for next
    vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)  -- Shift+h for prev

    -- Optional: jump to specific buffer number
    for i = 1, 9 do
      vim.keymap.set("n", "<leader>" .. i, ":BufferLineGoToBuffer " .. i .. "<CR>", opts)
    end
  end,
}

