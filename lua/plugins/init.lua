return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP config (centralized)
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Mason core
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason + LSP integration
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "gopls", "lua-language-server", "clangd","deno","css-lsp","html-lsp","laravel-ls","tailwindcss-language-server","typescript-language-server"},
        automatic_installation = true,
      }
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- Treesitter (optional but powerful)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "go", "c", "bash"
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
    build = ":TSUpdate",
  },
}
