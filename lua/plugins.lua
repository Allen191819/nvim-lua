--[[--
File              : plugins.lua
Date              : 01.09.2021
Last Modified Date: 01.09.2021
--]] --

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP =
        fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {border = "rounded"}
        end
    }
}
-- Install your plugins here
return packer.startup(
    {
        function(use)
            -- My plugins here
            -- Packer can manage itself
            use "wbthomason/packer.nvim"

            -- Lazy load
            use "lewis6991/impatient.nvim"

            -- Nvimtree
            use "cseickel/nvim-tree.lua"

            -- Troublu integration
            use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

            -- Config my lsp
            use "neovim/nvim-lspconfig"
            use "onsails/lspkind-nvim"
            use "williamboman/nvim-lsp-installer"

            -- Complete of nvim
            use "hrsh7th/nvim-cmp"
            use "hrsh7th/cmp-buffer"
            use "hrsh7th/cmp-nvim-lsp"
            use "hrsh7th/cmp-path"
            use "hrsh7th/cmp-nvim-lua"
            use "hrsh7th/cmp-cmdline"
            use {"hrsh7th/cmp-emoji"}
            use "f3fora/cmp-spell"
            use {"tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp"}
            use "ray-x/cmp-treesitter"
            use "hrsh7th/cmp-calc"
            use "quangnguyen30192/cmp-nvim-ultisnips"

            -- Notify
            use "rcarriga/nvim-notify"

            -- Show function signature when you type
            use {"ray-x/lsp_signature.nvim"}

            -- Snippets
            use "SirVer/ultisnips"
            use {"Allen191819/vim-snippets", rtp = "."}

            -- Colorscheme
            use "marko-cerovac/material.nvim"
            use "olimorris/onedarkpro.nvim"
            use "rebelot/kanagawa.nvim"

            -- Switch Surround thing
            use "tpope/vim-surround"

            -- treesitter
            use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
            use "nvim-treesitter/playground"
            use "nvim-treesitter/nvim-treesitter-refactor"
            use "andymass/vim-matchup"
            use "romgrk/nvim-treesitter-context"
            use "p00f/nvim-ts-rainbow"

            -- Hightlight for code blocks
            use "lukas-reineke/headlines.nvim"

            -- Telescope
            use "nvim-lua/popup.nvim"
            use "nvim-lua/plenary.nvim"
            use "nvim-telescope/telescope.nvim"
            use "nvim-telescope/telescope-media-files.nvim"
            use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
            use "fhill2/telescope-ultisnips.nvim"
            use {"mark-coyle/telescope-dbcli.nvim"}
            use "nvim-telescope/telescope-symbols.nvim"
            use "tom-anders/telescope-vim-bookmarks.nvim"

            -- Dev icons
            use "kyazdani42/nvim-web-devicons"

            -- Statusline
            use "nvim-lualine/lualine.nvim"
            use "arkav/lualine-lsp-progress"

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
            use "voldikss/vim-floaterm"

            -- Easymotion
            use "haya14busa/incsearch.vim"
            use "haya14busa/incsearch-easymotion.vim"
            use "Lokaltog/vim-easymotion"

            -- Region expand
            use "Allen191819/vim-expand-region"

            -- Textobj
            use "kana/vim-textobj-user"
            use "sgur/vim-textobj-parameter"
            use "kana/vim-textobj-line"

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
            use "h-hg/fcitx.nvim"
            use "ekickx/clipboard-image.nvim"
            use "rafcamlet/simple-wiki.nvim"
            use {
                "ellisonleao/glow.nvim",
                run = function()
                    require("glow").download_glow()
                end
            }
            use "mzlogin/vim-markdown-toc"

            -- Latex
            use "lervag/vimtex"

            -- Translater
            use "ianva/vim-youdao-translater"

            -- Smoothly scroll
            use "karb94/neoscroll.nvim"

            -- Git
            use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
            use "kdheepak/lazygit.nvim"

            -- Code run
            use {"michaelb/sniprun", run = "bash ./install.sh 1"}

            -- Tagbar
            use {"stevearc/aerial.nvim"}

            -- Mulit cursors
            use "mg979/vim-visual-multi"

            -- Replace
            use "brooth/far.vim"

            -- Startup time
            -- use "dstein64/vim-startuptime"

            -- Easy swap
            use "mizlan/iswap.nvim"

            -- File header
            use "alpertuna/vim-header"

            -- Database
            use "tpope/vim-dadbod"
            use "kristijanhusak/vim-dadbod-ui"

            -- Jump livly
            use "nacro90/numb.nvim"

            -- Bookmark
            use "MattesGroeger/vim-bookmarks"

            -- Csv
            use "Nguyen-Hoang-Nam/nvim-preview-csv"

            if PACKER_BOOTSTRAP then
                require("packer").sync()
            end
        end,
        config = {
            -- Move to lua dir so impatient.nvim can cache it
            compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua"
        }
    }
)
