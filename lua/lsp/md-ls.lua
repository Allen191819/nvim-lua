--[[--
File              : md-ls.lua
Date              : 21.08.2021
Last Modified Date: 21.08.2021
--]]--

-- require'lspconfig'.zeta_note.setup{
--     cmd = {'/home/allen/.config/nvim/language-servers/zeta-note'},
--     filetypes = { "markdown" },
-- }

local lsp_configs = require('lspconfig/configs')

lsp_configs.prosemd = {
  default_config = {
    -- Update the path to prosemd-lsp
    cmd = { "/home/allen/.cargo/bin/prosemd-lsp", "--stdio" },
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
