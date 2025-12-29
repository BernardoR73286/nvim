return {
    "snacks-nvim",
    event = "DeferredUIEnter",
    after = function()
        require("snacks-nvim").setup()
    end,
}
