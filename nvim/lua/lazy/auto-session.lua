return {
    "auto-session",
    after = function()
        local at_repo_root = vim.g.repo_root == vim.uv.cwd()
        require("auto-session").setup({
            auto_create = at_repo_root
        })
        vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    end,
}