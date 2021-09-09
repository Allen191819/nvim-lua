--[[--
File              : init.lua
Date              : 08.09.2021
Last Modified Date: 08.09.2021
--]]--
--[[
--     
      ________   _______   ________  ___      ___ ___  _____ ______      
     |\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    
     \ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   
      \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  
       \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ 
        \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\
         \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|
                                                                         

-- ]]
-- General
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')
require('function')

-- Lsp
require('lsp.lua-ls')
require('lsp.md-ls')
require('lsp.py-ls')
require('lsp.ccls-ls')
require('lsp.sql-ls')

-- Plugins
require('nv-autopair')
require('nv-bufferline')
require('nv-coderun')
require('nv-colorizer')
require('nv-commenter')
require('nv-cmp')
require('nv-dadbod')
require('nv-dashboard')
-- require('nv-debugger')
require('nv-diffview')
require('nv-easymotion')
require('nv-floaterm')
require('nv-focus')
require('nv-folder')
require('nv-galaxyline')
require('nv-git')
require('nv-header')
require('nv-indent-blankline')
require('nv-iswap')
require('nv-latex')
require('nv-lsp-conf')
require('nv-markdown')
require('nv-notify')
require('nv-numb')
require('nv-nvim-tree')
require('nv-project')
require('nv-neoscroll')
require('nv-tabout')
require('nv-telescope')
require('nv-treesitter')
require('nv-undotree')
require('nv-venn')
