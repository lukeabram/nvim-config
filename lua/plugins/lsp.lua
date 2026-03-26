return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- Capabilities for nvim-cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Common on_attach function for keymaps etc.
      local on_attach = function(client, bufnr)
        -- place your keymaps or other LSP logic here
      end

      -- Lua
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server", "--force-accept-workspace" },
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
        root_dir = function(fname)
          return vim.fn.stdpath("config")
        end,
        on_attach = on_attach,
        capabilities = capabilities,
      })
      vim.lsp.enable("lua_ls")

      vim.lsp.config("clangd", {
          cmd = { "clangd" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
          on_attach = on_attach,
          capabilities = capabilities,
      })
      vim.lsp.enable("clangd")

      -- Python
      vim.lsp.config("pyright", {
        on_attach = on_attach,
        capabilities = capabilities,
      })
      vim.lsp.enable("pyright")
    end,
  },
}


