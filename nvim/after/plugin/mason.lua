require('mason-lspconfig').setup {
    ensure_installed = { "bashls", "clangd", "gopls", "jedi_language_server", "lua_ls", "rust_analyzer", "tsserver" },
}
