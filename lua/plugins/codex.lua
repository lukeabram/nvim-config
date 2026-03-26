return {
  {
    "johnseth97/codex.nvim",
    cmd = { "Codex", "CodexToggle" },
    keys = {
      {
        "<leader>cc",
        function()
          require("codex").toggle()
        end,
        desc = "Toggle Codex",
      },
    },
    opts = {
      autoinstall = true, -- installs CLI if missing
      width = 0.8,
      height = 0.8,
    },
  },
}
