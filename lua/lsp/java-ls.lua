local lspconfig = require('lspconfig')
require"lspconfig".java_language_server.setup {
    cmd = {"java-language-server"},
    filetypes = {"java"},
    root_dir = lspconfig.util.root_pattern("build.gradle", "pom.xml", ".git","build.xml") or vim.fn.getcwd()
}
