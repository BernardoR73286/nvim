return {
  "conform-nvim",
  event = "BufWritePre",
  after = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        nix = { "nixfmt" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        -- add more as needed
      },
      formatters = {
        stylua = {
          prepend_args = { "--indent-width", "2", "--indent-type", "Spaces" },
        },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true, -- use LSP formatter if no other available
      },
    })
  end,
}
