require'lspconfig'.lua.setup {
    settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
                maxPreload = 1500,
                preloadFileSize = 300
            }
        }
    }
}
