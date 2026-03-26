return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "Welcome Luke",
      "",
      "Neovim Setup Complete"
    }

    alpha.setup(dashboard.opts)
  end,
}

