local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>bd", function()
  local bufnr = vim.api.nvim_get_current_buf()

  if vim.bo[bufnr].modified then
    vim.cmd("write")
  end

  vim.cmd("bnext")
  vim.cmd("bdelete " .. bufnr)
end, { desc = "Delete buffer safely" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

require("lazy").setup("plugins")

