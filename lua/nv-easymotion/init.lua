--<Leader>f{char} to move to {char}
vim.api.nvim_set_keymap("", "<Leader>t", "<Plug>(easymotion-bd-f)", {silent = true})
vim.api.nvim_set_keymap("n", "<Leader>t", "<Plug>(easymotion-overwin-f)", {silent = true})

--s{char}{char} to move to {char}{char}
vim.api.nvim_set_keymap("n", "<Leader>v", "<Plug>(easymotion-overwin-f2)", {silent = true})

--Move to line
vim.api.nvim_set_keymap("", "<Leader>l", "<Plug>(easymotion-bd-jk)", {silent = true})
vim.api.nvim_set_keymap("n", "<Leader>l", "<Plug>(easymotion-overwin-line)", {silent = true})

--Move to word
vim.api.nvim_set_keymap("", "<Leader>w", "<Plug>(easymotion-bd-w)", {silent = true})
vim.api.nvim_set_keymap("n", "<Leader>w", "<Plug>(easymotion-overwin-w)", {silent = true})

--Move to search
vim.api.nvim_set_keymap("", "z/", "<Plug>(incsearch-easymotion-/)", {silent = true})
vim.api.nvim_set_keymap("", "z?", "<Plug>(incsearch-easymotion-?)", {silent = true})
vim.api.nvim_set_keymap("", "zg/", "<Plug>(incsearch-easymotion-stay)", {silent = true})

vim.cmd [[
let g:expand_region_text_objects = {
      \ 'iw'  :1,
      \ 'iW'  :0,
      \ 'i"'  :1,
      \ 'i''' :1,
      \ 'i]'  :1, 
      \ 'ib'  :1, 
      \ 'iB'  :1, 
      \ 'ip'  :1,
      \ }
]]
