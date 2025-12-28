return {
    {
        "nvim-lspconfig",
        event = "BufReadPre",
        after = function()

    
            vim.lsp.enable({
                "lua_ls",
                "basedpyright",
                "ruff",
                "jdtls",
                "rust_analyzer",
                "nil_ls",
                "nixd",
                "fish_lsp",
                "bashls",
                "cssls",
                "html",
                "ts_ls",
                "jsonls",
            }
            vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            end,
        })
        end,
}
