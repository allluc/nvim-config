return {
  -- Configure LSP servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Lua
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
              telemetry = {
                enable = false,
              },
            },
          },
        },
        -- Python
        pyright = {},
        -- JavaScript/TypeScript
        ts_ls = {},
        -- JSON
        jsonls = {},
        -- HTML
        html = {},
        -- CSS
        cssls = {},
        -- Bash
        bashls = {},
        -- YAML
        yamlls = {},
        -- Markdown
        marksman = {},
        -- Go
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
              gofumpt = true,
            },
          },
        },
        -- Rust
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
              cargo = {
                allFeatures = true,
              },
            },
          },
        },
        -- Zig
        zls = {},
      },
    },
  },

  -- Configure Mason to ensure language servers are installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Language servers
        "lua-language-server",
        "pyright",
        "typescript-language-server",
        "json-lsp",
        "html-lsp",
        "css-lsp",
        "bash-language-server",
        "yaml-language-server",
        "marksman",
        "gopls",
        "rust-analyzer",
        "zls",
        -- Linters
        "stylua",
        "shellcheck",
        "shfmt",
        -- Formatters
        "prettier",
        "black",
        "gofumpt",
        "goimports",
      },
    },
  },
}
