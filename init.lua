require('config.options')
require('config.keybinds')
require('config.lazy')


-- Format on save using LSP (works with prettierd)
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.js', '*.jsx', '*.ts', '*.tsx', '*.css', '*.html', '*.json', '*.md', '*.yaml' },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
