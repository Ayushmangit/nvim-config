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
