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
                    vim.cmd.WriteOil()
                    actions.select.callback()
                end,

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