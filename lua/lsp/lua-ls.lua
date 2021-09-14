local sumneko_root_path = "/home/allen/.config/nvim/language-servers/lua-language-server"
local sumneko_binary = "/home/allen/.config/nvim/language-servers/lua-language-server/bin/Linux/lua-language-server"
require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                globals = {'vim'}
            },
            workspace = {
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,[vim.fn.expand('${3rd}/love2d/library')]=true},
                checkThirdParty = false,
                maxPreload = 1500,
                preloadFileSize = 500
            }
        }
    }
}
