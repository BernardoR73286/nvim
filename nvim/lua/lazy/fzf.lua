return {
    "fzf-lua",
    before = function ()
        LZN.trigger_load("nvim-web-devicons")
    end,
    after = function ()
        require("fzf-lua").setup({
            {"telescope", "fzf-native", "hide"},
            winopts = {preview = {default = "bat"}}})
    end,
}