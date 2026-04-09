vim.opt.termguicolors = true

require("config.options")
require("config.keymaps")
require("config.lazy")

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    -- If file ends with a newline, represent it as an extra blank line
    if vim.bo.endofline then
      vim.bo.endofline = false
      vim.bo.fixendofline = false

      -- Avoid duplicating if already added (e.g., reloads)
      local last = vim.fn.getline(vim.fn.line("$"))
      if last ~= "" then
        vim.fn.append(vim.fn.line("$"), "")
      end
    end
  end,
})
