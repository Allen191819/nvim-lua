vim.api.nvim_set_keymap('n','<Space>','<NOP>',{ noremap=true,silent=true })

vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n','<leader>h',':set hlsearch!<CR>',{ noremap=true,silent=true })

-- explore tree
vim.api.nvim_set_keymap('n','<leader>e',':NvimTreeToggle<CR>',{ noremap=true,silent=true })
vim.api.nvim_set_keymap('n','<F1>',':Vista!!<CR>',{ noremap=true,silent=true })

-- window movement
vim.api.nvim_set_keymap('n','<C-j>','<C-w>j',{ silent=true })
vim.api.nvim_set_keymap('n','<C-h>','<C-w>h',{ silent=true })
vim.api.nvim_set_keymap('n','<C-k>','<C-w>k',{ silent=true })
vim.api.nvim_set_keymap('n','<C-l>','<C-w>l',{ silent=true })

-- indent
vim.api.nvim_set_keymap('v','<','<gv',{ noremap = true,silent=true })
vim.api.nvim_set_keymap('v','>','>gv',{ noremap = true,silent=true })

-- switch

vim.api.nvim_set_keymap('n','<TAB>',':bnext<CR>',{ noremap = true,silent=true })
vim.api.nvim_set_keymap('n','<S-TAB>',':bprevious<CR>',{ noremap = true,silent=true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x','K',':move \'<-2<CR>gv-gv\'',{ noremap = true,silent=true })
vim.api.nvim_set_keymap('x','J',':move \'>+1<CR>gv-gv\'',{ noremap = true,silent=true })

-- Tab complete
vim.api.nvim_set_keymap('i','<expr><TAB>','pumvisible() ? \"\\<c-n>\" : \"\\<TAB>\"',{ noremap = true,silent = true })

-- Better T & F
vim.api.nvim_set_keymap('n',';','<Plug>(eft-repeat)',{ silent=true })
vim.api.nvim_set_keymap('x',';','<Plug>(eft-repeat)',{ silent=true })
vim.api.nvim_set_keymap('n','f','<Plug>(eft-f)',{ silent=true })
vim.api.nvim_set_keymap('x','f','<Plug>(eft-f)',{ silent=true })
vim.api.nvim_set_keymap('o','f','<Plug>(eft-f)',{ silent=true })
vim.api.nvim_set_keymap('n','F','<Plug>(eft-F)',{ silent=true })
vim.api.nvim_set_keymap('x','F','<Plug>(eft-F)',{ silent=true })
vim.api.nvim_set_keymap('o','F','<Plug>(eft-F)',{ silent=true })
vim.api.nvim_set_keymap('n','t','<Plug>(eft-t)',{ silent=true })
vim.api.nvim_set_keymap('x','t','<Plug>(eft-t)',{ silent=true })
vim.api.nvim_set_keymap('o','t','<Plug>(eft-t)',{ silent=true })
vim.api.nvim_set_keymap('n','T','<Plug>(eft-T)',{ silent=true })
vim.api.nvim_set_keymap('x','T','<Plug>(eft-T)',{ silent=true })
vim.api.nvim_set_keymap('o','T','<Plug>(eft-T)',{ silent=true })

-- better j & k
vim.api.nvim_set_keymap('n','j','<plug>(accelerated_jk_gj)',{ silent=true })
vim.api.nvim_set_keymap('n','k','<Plug>(accelerated_jk_gk)',{ silent=true })

-- Easy term
vim.api.nvim_set_keymap('n','<leader>th',':ToggleTerm size=20 direction=horizontal<Cr>',{ silent=true })
vim.api.nvim_set_keymap('n','<leader>tw',':ToggleTerm direction=window<Cr>',{ silent=true })
vim.api.nvim_set_keymap('n','<leader>tv',':ToggleTerm direction=vertical<Cr>',{ silent=true })

-- Shortcut
vim.api.nvim_set_keymap('n','W',':Autoformat<Cr>:w<Cr>',{ silent=true })
vim.api.nvim_set_keymap('n','Q',':q<Cr>',{ silent=true })

vim.api.nvim_set_keymap('n','<Leader>tr','<Plug>TranslateW',{ silent=true })
vim.api.nvim_set_keymap('v','<Leader>tr','<Plug>TranslateWV',{ silent=true })


vim.api.nvim_set_keymap('n',',f','<Esc>/<++><CR>:nohlsearch<CR>c4l',{ silent=true,noremap=true })
vim.api.nvim_set_keymap('i',',f','<Esc>/<++><CR>:nohlsearch<CR>c4l',{ silent=true,noremap=true })

-- Lsp
vim.api.nvim_set_keymap('n','gh',':Lspsaga lsp_finder<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<leader>ca',':Lspsaga code_action<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('v','<leader>ca',':<C-U>Lspsaga range_code_action<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','K',':Lspsaga hover_doc<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','gn',':Lspsaga signature_help<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<A-f>','<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<A-b>','<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<leader>r',':Lspsaga rename<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','gp',':Lspsaga preview_definition<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<leader>cd','<cmd>lua require\'lspsaga.diagnostic\'.show_line_diagnostics()<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<leader>cc','<cmd>lua require\'lspsaga.diagnostic\'.show_cursor_diagnostics()<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','g[',':Lspsaga diagnostic_jump_prev<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','g]',':Lspsaga diagnostic_jump_next<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', ',wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', ',wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', ',wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', ',q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',{silent=true,noremap=true})
vim.api.nvim_set_keymap('n', ',f', '<cmd>lua vim.lsp.buf.formatting()<CR>',{silent=true,noremap=true})

-- Snippet
vim.g.UltiSnipsExpandTrigger="<A-n>"
vim.g.UltiSnipsJumpForwardTrigger="<A-n>"
vim.g.UltiSnipsJumpBackwardTrigger="<A-b>"
vim.g.UltiSnipsEditSplit="vertical"


-- DashBoard / Telescope
vim.api.nvim_set_keymap('n','<Leader>fh',':DashboardFindHistory<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>sl',':<C-u>SessionLoad<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>fa',':DashboardFindWord<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>fb',':DashboardJumpMark<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>ff',':DashboardFindFile<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>cn',':DashboardNewFile<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>tc',':DashboardChangeColorscheme<CR>', { noremap = true , silent = false })
vim.api.nvim_set_keymap('n','<Leader>fm',':Telescope media_files<CR>', { noremap = true , silent = false })

-- Debugger
vim.api.nvim_set_keymap('n','M',':e .vimspector.json<Cr> :r! cat /home/allen/.config/nvim/sample_vimspector_json',{ silent=true })
vim.api.nvim_set_keymap('n','Z',':lua require(\'telescope\').extensions.vimspector.configurations()<Cr>',{ silent=true })
