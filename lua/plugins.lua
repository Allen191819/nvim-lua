local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

--local use = require('packer').userequire('packer').startup( { function() use { 'wbthomason/packer.nvim', opt = true } } )
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Highlight motion
    use 'danilamihailov/beacon.nvim'

    -- Simple plugins can be specified as strings
    use 'kyazdani42/nvim-tree.lua'

    -- Config my lsp
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'kabouzeid/nvim-lspinstall'

    -- Complete of nvim
    use 'hrsh7th/nvim-compe'

    -- Snippets
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- Colorscheme
    use 'marko-cerovac/material.nvim'

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
    use {"nvim-telescope/telescope-frecency.nvim", config = function() requires = {"tami5/sql.nvim"} end }
    use 'tami5/sql.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-vimspector.nvim'

    -- Dev icons
    use 'kyazdani42/nvim-web-devicons'

    -- Statusline
    use {'glepnir/galaxyline.nvim', branch = 'main'}
    --use 'hoob3rt/lualine.nvim'

    -- Bufferline
    use 'akinsho/nvim-bufferline.lua'

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Diffview
    use 'sindrets/diffview.nvim'

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
    -- use "lukas-reineke/indent-blankline.nvim"
    use 'glepnir/indent-guides.nvim'

    -- Switch quickly
    use 'AndrewRadev/switch.vim'

    -- calendar
    use 'itchyny/calendar.vim'

    -- Comment quickly
    use 'terrortylor/nvim-comment'

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

    -- Table mode for markdown
    use {'dhruvasagar/vim-table-mode'}

    -- Better J&K
    use 'rhysd/accelerated-jk'

    -- Translate
    use 'voldikss/vim-translator'

    -- Smoothly scroll
    use 'psliwka/vim-smoothie'

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use 'kdheepak/lazygit.nvim'

    -- Code run
    use { 'michaelb/sniprun', run = 'bash ./install.sh 1'}

    -- Interesting
    use 'ron89/thesaurus_query.vim'

    -- Tagbar
    use 'liuchengxu/vista.vim'

    -- Mulit cursors
    use 'mg979/vim-visual-multi'

    -- Replace
    use 'brooth/far.vim'

    -- Window focus
    use 'beauwilliams/focus.nvim'

    -- Debugger
    use 'puremourning/vimspector'
    --use 'mfussenegger/nvim-dap'
    --use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)
