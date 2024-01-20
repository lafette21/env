require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "bashls", "clangd", "gopls", "jedi_language_server", "lua_ls", "rust_analyzer", "tsserver" },
}

require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end,
}
