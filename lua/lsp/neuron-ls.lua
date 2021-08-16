local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'

configs.neuron_ls = {
  default_config = {
    cmd = {'/home/allen/go/bin/neuron-language-server'};
    filetypes = {'markdown'};
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

nvim_lsp.neuron_ls.setup{}
