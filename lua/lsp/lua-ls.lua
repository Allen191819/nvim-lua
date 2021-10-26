local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(
    function(sumneko_lua)
        sumneko_lua:setup {
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
	end
)
