return {
  -- Manager for external tools (LSPs, linters, debuggers, formatters, etc.)
  -- auto-install and auto-update.
  -- {
  --   "WhoIsSethDaniel/mason-tool-installer.nvim",
  --   dependencies = {
  --     { "williamboman/mason.nvim", opts = true },
  --     { "williamboman/mason-lspconfig.nvim", opts = true },
  --   },
  --   opts = {
  --     ensure_installed = {
  --       "pyright", -- LSP for python
  --       "ruff-lsp", -- linter for python (includes flake8, pep8, etc.)
  --       --"debugpy", -- debugger
  --       "black", -- formatter
  --       --"isort", -- organize imports
  --       "taplo", -- LSP for toml (for pyproject.toml files)
  --     },
  --   },
  -- },
  -- LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {}, -- LSP for python
        taplo = {}, -- LSP for toml (for pyproject.toml files)
        ruff_lsp = {}, -- linter for python (includes flake8, pep8, etc.)
      },
    },
  },
  -- Formatting client: conform.nvim
  -- - use black and ruff for python
  -- - use the taplo-LSP for formatting in toml
  -- - Formatting is triggered via `<leader>f`, but also automatically on save
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- use ruff for python
        python = {
          { "ruff_format" },
          { exe = "ruff", args = { "--fix" } },
        },
        -- use taplo for toml
        toml = {
          { exe = "taplo", args = { "fmt" } },
        },
        -- use shfmt for shell scripts
        sh = { "shfmt" },
        -- "inject" is a special formatter from conform.nvim, which
        -- formats tresitter-injected code. Basically, this makes
        -- conform.nvim format python codeblocks inside a markdown file.
        markdown = { "inject" },
      },
      formatters = {
        shfmt = {
          --prepend_args = { "-i", "4", "-ci" },
        },
      },
    },
  },
}
