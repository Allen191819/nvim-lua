--<Leader>f{char} to move to {char}
vim.api.nvim_set_keymap('','<Leader>z','<Plug>(easymotion-bd-f)',{ silent=true })
vim.api.nvim_set_keymap('n','<Leader>z','<Plug>(easymotion-overwin-f)',{ silent=true })

--s{char}{char} to move to {char}{char}
vim.api.nvim_set_keymap('n','<Leader>x','<Plug>(easymotion-overwin-f2)',{ silent=true })

--Move to line
vim.api.nvim_set_keymap('','<Leader>l','<Plug>(easymotion-bd-jk)',{ silent=true })
vim.api.nvim_set_keymap('n','<Leader>l','<Plug>(easymotion-overwin-line)',{ silent=true })

--Move to word
vim.api.nvim_set_keymap('','<Leader>w','<Plug>(easymotion-bd-w)',{ silent=true })
vim.api.nvim_set_keymap('n','<Leader>w','<Plug>(easymotion-overwin-w)',{ silent=true })

--Move to search
vim.api.nvim_set_keymap('','z/','<Plug>(incsearch-easymotion-/)',{ silent=true })
vim.api.nvim_set_keymap('','z?','<Plug>(incsearch-easymotion-?)',{ silent=true })
vim.api.nvim_set_keymap('','zg/','<Plug>(incsearch-easymotion-stay)',{ silent=true })
