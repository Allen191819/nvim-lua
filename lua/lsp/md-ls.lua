local lsp_configs = require('lspconfig/configs')
lsp_configs.prosemd = {
  default_config = {
    -- Update the path to prosemd-lsp
    cmd = { "/home/allen/.config/nvim/language-servers/prosemd-lsp-linux", "--stdio" },
    filetypes = { "markdown" },
    root_dir = function(fname)
      return vim.fn.getcwd()
    end,
    settings = {},
  }
}

-- Use your attach function here
local lsp = require('lspconfig')
lsp.prosemd.setup{ on_attach = on_attach }
