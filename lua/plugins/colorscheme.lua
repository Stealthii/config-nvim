return {
  -- -- Theme
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("gruvbox").setup({
  --       italic = {
  --         strings = false,
  --         emphasis = true,
  --         comments = true,
  --         operators = false,
  --         folds = true,
  --       },
  --       overrides = {
  --         ["@lsp.type.method"] = { bg = "#ff9900" },
  --         ["@lsp.type.selfKeyword"] = { fg = "#ff9900" },
  --         ["@comment.lua"] = { bg = "#000000" },
  --       },
  --     })
  --   end,
  -- },
  -- -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     background = "dark",
  --     colorscheme = "gruvbox",
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
}
