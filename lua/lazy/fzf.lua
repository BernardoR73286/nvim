return {
    "fzf-lua",
    keys = {
        { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find files" },
        { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live grep" },
        { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "Open buffers" },
        { "<leader>/", function() require("fzf-lua").blines() end, desc = "Search current buffer" },
        { "<leader>fl", function() require("fzf-lua").lines() end, desc = "Search open buffers" },
        { "<leader>fk", function() require("fzf-lua").keymaps() end, desc = "Search keymaps" },
        { "<leader>fh", function() require("fzf-lua").helptags() end, desc = "Search help" },
        { "<leader>fr", function() require("fzf-lua").oldfiles() end, desc = "Recent files" },
        { "<leader>fc", function() require("fzf-lua").commands() end, desc = "Commands" },
        { "<leader>fd", function() require("fzf-lua").diagnostics_document() end, desc = "Diagnostics" },
        { "<leader>fs", function() require("fzf-lua").lsp_document_symbols() end, desc = "Document symbols" },
        { "<leader>fw", function() require("fzf-lua").grep_cword() end, desc = "Grep word under cursor" },
        { "<leader>fR", function() require("fzf-lua").resume() end, desc = "Resume last picker" },
    },
    before = function()
        LZN.trigger_load("nvim-web-devicons")
    end,
    after = function()
        require("fzf-lua").setup({
            "telescope",
            winopts = { preview = { default = "bat" } },
            keymap = {
                fzf = {
                    ["ctrl-l"] = "accept",
                },
            },
            buffers = {
                actions = {
                    ["ctrl-x"] = { fn = require("fzf-lua").actions.buf_del, reload = true },
                },
            },
        })
    end,
}
