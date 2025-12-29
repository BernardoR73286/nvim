return {
    "snacks-nvim",
    lazy = false,
    after = function()
        require("snacks").setup({
            quickfile = { enabled = true },
            indent = {
                enabled = true,
                scope = { enabled = false },
            },
            input = { enabled = true },
        })
    end,
}
