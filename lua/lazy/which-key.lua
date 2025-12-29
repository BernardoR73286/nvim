return {
    "which-key-nvim",
    event = "DeferredUIEnter",
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps",
        },
    },
    after = function()
        require("which-key").setup({})
    end,
}
