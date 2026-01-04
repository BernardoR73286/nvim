return {
  {
    "nvim-treesitter",
    lazy = false,
    after = function() end,
  },
  {
    "rainbow-delimiters-nvim",
    after = function()
      local highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      }
      vim.g.rainbow_delimiters = {
        highlight = highlight,
      }
    end,
  },
  -- {
  --     "indent-blankline-nvim",
  --     before = function()
  --       LZN.trigger_load("nvim-treesitter")
  --       LZN.trigger_load("rainbow-delimiters-nvim")
  --     end,
  --     event = "DeferredUIEnter",
  --     after = function()
  --       local hooks = require("ibl.hooks")
  --       hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  --
  --       require("ibl").setup({
  --         scope = {
  --           enabled = true,
  --           show_start = true,
  --           show_end = true,
  --           injected_languages = true,
  --           highlight = vim.g.rainbow_delimiters.highlight,
  --         },
  --         indent = {
  --           char = "┋",
  --         },
  --       })
  --     end,
  -- }
}
