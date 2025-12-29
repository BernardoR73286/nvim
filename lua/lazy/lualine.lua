return {
  "lualine-nvim",
  lazy = false,
  -- event = "DeferredUIEnter",
  before = function()
    LZN.trigger_load("nvim-web-devicons")
    LZN.trigger_load("lsp-progress-nvim")
  end,
  after = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { "", "" },
        section_separators = { "", "" },
        disabled_filetypes = {},
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          {
            "filename",
            color = { bg = "none" },
            symbols = { modified = "", readonly = "" },
          },
        },
        lualine_c = {
          {
            "branch",
            icon = " •",
            separator = { left = "(", right = ")" },
          },
          function()
            return require("lsp-progress").progress()
          end,
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp", "nvim_diagnostic" },
            symbols = { error = "", warn = "", info = "", hint = "" },
          },
        },
        lualine_y = {
          {
            "fileformat",
            color = { bg = "none" },
          },
        },
        lualine_z = {
          {
            "progress",
            color = {
              bg = "none",
              fg = "lavender",
            },
          },
          {
            "location",
            color = { bg = "none", fg = "lavender" },
          },
          {
            "filetype",
            color = { bg = "none", fg = "lavender" },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { "fzf", "oil" },
    })
    -- listen lsp-progress event and refresh lualine
    vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
    vim.api.nvim_create_autocmd("User", {
    group = "lualine_augroup",
    pattern = "LspProgressStatusUpdated",
    callback = require("lualine").refresh,
    })
  end,
}
