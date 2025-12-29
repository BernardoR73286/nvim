return {
    "nvim-highlight-colors",
    after = function()
        -- Colorize hex codes
        require("nvim-highlight-colors").setup({})
    end,
}
