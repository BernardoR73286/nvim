return {
    "oil-nvim",
    after = function ()
        require("oil").setup({
            default_file_explorer = true,
            columns = {
                "icon",
                "mtime",
            },
            keymaps = {
                ["<C-h>"] = "actions.parent",
                ["<C-l>"] = function ()
                    local actions = require("oil.actions")
                    vim.cmd.WriteOil()
                    actions.select.callback()
                end,
                "actions.select",
                ["<M-h>"] = "actions.select_split",
            },
            winopts = {
                signcolumn = "yes",
            },
            float = {
                padding = 10,
            },
            delete_to_trash = true,
            watch_for_changes = true,

        })
    end
}