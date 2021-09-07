--[[--
File              : plugins.lua
Date              : 01.09.2021
Last Modified Date: 01.09.2021
--]]--
-- TODO: nv-debugger  nv_DB


local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'kyazdani42/nvim-tree.lua'

    -- Troublu integration
    use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

    -- Config my lsp
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'kabouzeid/nvim-lspinstall'

    -- Complete of nvim
    use 'hrsh7th/nvim-compe'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-buffer'

    -- Notify
    use 'rcarriga/nvim-notify'

    -- Show function signature when you type
    use { "ray-x/lsp_signature.nvim" }

    -- Snippets
    use 'hrsh7th/vim-vsnip'
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/vim-vsnip-integ"
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- Colorscheme
    -- use 'marko-cerovac/material.nvim'
    use 'folke/tokyonight.nvim'

    -- Switch Surround thing
    use 'tpope/vim-surround'

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'andymass/vim-matchup'
    use 'romgrk/nvim-treesitter-context'
    use 'p00f/nvim-ts-rainbow'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'AckslD/nvim-neoclip.lua'
    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            requires = {"tami5/sql.nvim"}
        end
    }
    use 'tami5/sql.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'fhill2/telescope-ultisnips.nvim'
    use { 'mark-coyle/telescope-dbcli.nvim' }
    use 'tom-anders/telescope-vim-bookmarks.nvim'
    --use 'nvim-telescope/telescope-vimspector.nvim'

    -- Dev icons
    use 'kyazdani42/nvim-web-devicons'

    -- Statusline
    use {'glepnir/galaxyline.nvim', branch = 'main'}
    --use 'hoob3rt/lualine.nvim'

    -- Bufferline
    use 'akinsho/bufferline.nvim'

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Diffview
    use 'sindrets/diffview.nvim'

    --Align code
    use 'junegunn/vim-easy-align'

    -- Undotree
    use 'mbbill/undotree'

    -- Floaterm
    use {"akinsho/nvim-toggleterm.lua"}
    use 'voldikss/vim-floaterm'

    -- Easymotion
    use 'haya14busa/incsearch.vim'
    use 'haya14busa/incsearch-easymotion.vim'
    use 'Lokaltog/vim-easymotion'

    -- Automatically pair
    use 'jiangmiao/auto-pairs'

    -- Indent line
    use 'Yggdroot/indentLine'

    -- Switch quickly
    use 'AndrewRadev/switch.vim'

    -- calendar
    use 'itchyny/calendar.vim'

    -- Comment quickly
    use 'terrortylor/nvim-comment'

    -- Interesting todo comment
    use 'folke/todo-comments.nvim'

    -- Simply fold
    use 'tmhedberg/SimpylFold'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- AutoFormat
    use 'Chiel92/vim-autoformat'

    -- Better f & t
    use 'hrsh7th/vim-eft'

    -- Same word highlight
    use 'xiyaowong/nvim-cursorword'

    -- markdown-preview
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

    -- Plugins for markdown
    use 'dhruvasagar/vim-table-mode'
    use 'ekickx/clipboard-image.nvim'
    use 'rafcamlet/simple-wiki.nvim'
    use {
        "ellisonleao/glow.nvim",
        run = function ()
            require('glow').download_glow()
        end
    }
    -- use {'mnowotnik/noteflow.nvim', run = 'bash build.sh'}

    -- Translate
    use 'voldikss/vim-translator'

    -- Smoothly scroll
    use 'karb94/neoscroll.nvim'

    -- Git
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }}
    use 'kdheepak/lazygit.nvim'

    -- Code run
    use { 'michaelb/sniprun', run = 'bash ./install.sh 1'}
    -- use 'CRAG666/code_runner.nvim'

    -- Tagbar
    use 'simrat39/symbols-outline.nvim'

    -- Mulit cursors
    use 'mg979/vim-visual-multi'

    -- Replace
    use 'brooth/far.vim'

    -- Window focus
    use 'beauwilliams/focus.nvim'

    -- Startup time
    use 'dstein64/vim-startuptime'

    -- Easy swap
    use 'mizlan/iswap.nvim'

    -- File header
    use 'alpertuna/vim-header'

    -- Draw
    use "jbyuki/venn.nvim"

    -- Database
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'kristijanhusak/vim-dadbod-completion'
    --use 'pbogut/vim-dadbod-ssh'

    -- project
    use 'ahmedkhalf/project.nvim'

    -- Tabout
    use 'abecodes/tabout.nvim'

    -- Jump livly
    use 'nacro90/numb.nvim'

    -- Bookmark
    use 'MattesGroeger/vim-bookmarks'

    -- Tabnine source
    use {'tzachar/compe-tabnine', run='./install.sh'}

    -- Debugger
    -- use 'puremourning/vimspector'
    -- use 'mfussenegger/nvim-dap'
    -- use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    -- use "Pocco81/DAPInstall.nvim"
end)
