local server_started = false

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.html",
    callback = function()
        if not server_started then
            vim.cmd("LiveServerStart")
            server_started = true
        end
    end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true, bg = "none" })
    end,
})
