--[[--
File              : init.lua
Date              : 08.09.2021
Last Modified Date: 08.09.2021
--]] --
--[[
--
      ________   _______   ________  ___      ___ ___  _____ _______
     |\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \
     \ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \
      \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \
       \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \
	    \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\
	     \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|

-- ]]
-- TODO: Add debug in future
-- INFO: It very nice!
-- General
--require("impatient")
--require "impatient".enable_profile()
require("plugins")
require("keymappings")
require("colorscheme")
require("function")
require("settings")

-- Lsp
require("nv-lsp-conf")
require("lsp.ccls-ls")
require("lsp.lua-ls")
require("lsp.sql-ls")
require("lsp.tex-ls")

-- Plugins
require("nv-autopair")
require("nv-bufferline")
require("nv-coderun")
require("nv-colorizer")
require("nv-commenter")
require("nv-cmp")
require("nv-csv")
require("nv-dadbod")
require("nv-dashboard")
-- require('nv-debugger')
require("nv-diffview")
require("nv-easymotion")
require("nv-floaterm")
require("nv-folder")
require("nv-format")
require("nv-galaxyline")
require("nv-git")
require("nv-header")
require("nv-hlchunk")
require("nv-indent-blankline")
require("nv-iswap")
require("nv-latex")
require("nv-markdown")
require("nv-notify")
require("nv-numb")
require("nv-nvim-tree")
-- require('nv-project')
require("nv-neoscroll")
require("nv-telescope")
require("nv-treesitter")
require("nv-undotree")
require("nv-venn")
