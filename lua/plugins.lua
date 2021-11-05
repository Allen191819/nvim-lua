--[[--
File              : plugins.lua
Date              : 01.09.2021
Last Modified Date: 01.09.2021
--]] --

local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer = require("packer")

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
    execute "packadd packer.nvim"
end
return require("packer").startup(
    {
        function()
            -- Packer can manage itself
            use "wbthomason/packer.nvim"
            use "lewis6991/impatient.nvim"

            -- Simple plugins can be specified as strings
            use "cseickel/nvim-tree.lua"

            -- Troublu integration
            use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

            -- Config my lsp
            use "neovim/nvim-lspconfig"
            use "onsails/lspkind-nvim"
            use {"jasonrhansen/lspsaga.nvim", branch = "finder-preview-fixes"}
            use "williamboman/nvim-lsp-installer"
            --use "kabouzeid/nvim-lspinstall"

            -- Complete of nvim
            use "hrsh7th/nvim-cmp"
            use "hrsh7th/cmp-buffer"
            use "hrsh7th/cmp-nvim-lsp"
            use "hrsh7th/cmp-path"
            use "hrsh7th/cmp-nvim-lua"
            --            use "hrsh7th/cmp-cmdline"
            use {"hrsh7th/cmp-emoji"}
            use "f3fora/cmp-spell"
            use "ray-x/cmp-treesitter"
            use "hrsh7th/cmp-calc"
            use "quangnguyen30192/cmp-nvim-ultisnips"
            use {"kdheepak/cmp-latex-symbols"}

            -- Notify
            use "rcarriga/nvim-notify"

            -- Show function signature when you type
            use {"ray-x/lsp_signature.nvim"}

            -- Snippets
            use "SirVer/ultisnips"
            use {"Allen191819/vim-snippets", rtp = "."}

            -- Colorscheme
            use "folke/tokyonight.nvim"

            -- Switch Surround thing
            use "tpope/vim-surround"

            -- treesitter
            use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
            use "nvim-treesitter/playground"
            use "nvim-treesitter/nvim-treesitter-refactor"
            use "nvim-treesitter/nvim-treesitter-textobjects"
            use "andymass/vim-matchup"
            use "romgrk/nvim-treesitter-context"
            use "p00f/nvim-ts-rainbow"

            -- Telescope
            use "nvim-lua/popup.nvim"
            use "nvim-lua/plenary.nvim"
            use "nvim-telescope/telescope.nvim"
            use "nvim-telescope/telescope-media-files.nvim"
            use "AckslD/nvim-neoclip.lua"
            use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
            use "fhill2/telescope-ultisnips.nvim"
            use {"mark-coyle/telescope-dbcli.nvim"}
            use "tom-anders/telescope-vim-bookmarks.nvim"

            -- Dev icons
            use "kyazdani42/nvim-web-devicons"

            -- Statusline
            use {"glepnir/galaxyline.nvim", branch = "main"}

            -- Bufferline
            use "akinsho/bufferline.nvim"

            -- Colorizer
            use "norcalli/nvim-colorizer.lua"

            -- Diffview
            use "sindrets/diffview.nvim"

            --Align code
            use "junegunn/vim-easy-align"

            -- Undotree
            use "mbbill/undotree"

            -- Floaterm
            use {"akinsho/nvim-toggleterm.lua"}
            use "voldikss/vim-floaterm"

            -- Easymotion
            use "haya14busa/incsearch.vim"
            use "haya14busa/incsearch-easymotion.vim"
            use "Lokaltog/vim-easymotion"

            -- Region
            use "Allen191819/vim-expand-region"

            -- Automatically pair
            use "jiangmiao/auto-pairs"

            -- Indent line
            use "Yggdroot/indentLine"
            use "winston0410/smart-cursor.nvim"

            -- Switch quickly
            use "AndrewRadev/switch.vim"

            -- Comment quickly
            use "terrortylor/nvim-comment"

            -- pairs
            use "yaocccc/nvim-hlchunk"

            -- Interesting todo comment
            use "folke/todo-comments.nvim"

            -- Simply fold
            use "tmhedberg/SimpylFold"

            -- Dashboard
            use "glepnir/dashboard-nvim"

            -- AutoFormat
            use "Chiel92/vim-autoformat"
            use "lukas-reineke/format.nvim"

            -- Better f & t
            use "hrsh7th/vim-eft"

            -- Highlight current word
            use "xiyaowong/nvim-cursorword"

            -- Plugins for markdown
            use "dhruvasagar/vim-table-mode"
            use {"yaocccc/markdown-preview.nvim", config = "vim.call('mkdp#util#install')"}
            use "520Matches/fcitx5.vim"
            use "ekickx/clipboard-image.nvim"
            use "rafcamlet/simple-wiki.nvim"
            use {
                "ellisonleao/glow.nvim",
                run = function()
                    require("glow").download_glow()
                end
            }
            use "mzlogin/vim-markdown-toc"

            -- Talex
            use "jbyuki/nabla.nvim"
            use "lervag/vimtex"

            -- Translate
            use "ianva/vim-youdao-translater"

            -- Smoothly scroll
            use "karb94/neoscroll.nvim"

            -- Git
            use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
            use "kdheepak/lazygit.nvim"

            -- Code run
            use {"michaelb/sniprun", run = "bash ./install.sh 1"}

            -- Tagbar
            use "simrat39/symbols-outline.nvim"

            -- Mulit cursors
            use "mg979/vim-visual-multi"

            -- Replace
            use "brooth/far.vim"

            -- Startup time
            use "dstein64/vim-startuptime"

            -- Easy swap
            use "mizlan/iswap.nvim"

            -- File header
            use "alpertuna/vim-header"

            -- Draw
            use "jbyuki/venn.nvim"

            -- Database
            use "tpope/vim-dadbod"
            use "kristijanhusak/vim-dadbod-ui"

            -- project
            --use "ahmedkhalf/project.nvim"

            -- Jump livly
            use "nacro90/numb.nvim"

            -- Bookmark
            use "MattesGroeger/vim-bookmarks"

            -- Csv
            use "Nguyen-Hoang-Nam/nvim-preview-csv"
            -- Debugger
            -- use 'puremourning/vimspector'
            -- use 'mfussenegger/nvim-dap'
            -- use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
            -- use "Pocco81/DAPInstall.nvim"
        end,
        config = {
            -- Move to lua dir so impatient.nvim can cache it
            compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
        }
    }
)
