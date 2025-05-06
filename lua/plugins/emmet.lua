return {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact" }, -- Load only for these filetypes
    init = function()
        vim.g.user_emmet_mode = "n"                             -- Normal + Insert mode
        vim.g.user_emmet_leader_key = "<C-y>"                   -- Trigger key
    end,
}
