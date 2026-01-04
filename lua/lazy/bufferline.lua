return {
  "bufferline-nvim",
  lazy = false,
  before = function()
    LZN.trigger_load("nvim-web-devicons")
  end,
  after = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "thin", -- or "slant", "padded_slant", "thick"
        always_show_bufferline = true,
      },
    })

    -- Navigate buffers
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })

    -- Move buffers in the line
    vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })
    vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })

    -- Pick buffer by letter
    vim.keymap.set("n", "<leader>bb", "<cmd>BufferLinePick<cr>", { desc = "Pick buffer" })

    -- Close buffer
    vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
  end,
}
