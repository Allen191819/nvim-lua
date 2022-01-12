vim.cmd [[colorscheme material]]
require("material").setup(
    {
        contrast = {
            sidebars = true, -- Enable contrast for sidebar-like windows ( for   example Nvim-Tree )
            floating_windows = true, -- Enable contrast for floating windows
            line_numbers = false, -- Enable contrast background for line numbers
            sign_column = false, -- Enable contrast background for the sign column
            cursor_line = false, -- Enable darker background for the cursor line
            non_current_windows = false, -- Enable darker background for non-current windows
            popup_menu = true -- Enable lighter background for the popup menu
        },
        contrast_filetypes = {
            "terminal", -- Darker terminal background
            "packer", -- Darker packer background
            "qf", -- Darker qf list background
            "NvimTree",
            "dbui",
            "undotree",
            "aerial",
            "floaterm"
        },
        high_visibility = {
            lighter = false, -- Enable higher contrast text for lighter style
            darker = true -- Enable higher contrast text for darker style
        },
        disable = {
            borders = false, -- Disable borders between verticaly split windows
            background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
            term_colors = true, -- Prevent the theme from setting terminal colors
            eob_lines = false -- Hide the end-of-buffer lines
        },
        italics = {
            comments = true, -- Enable italic comments
            keywords = true, -- Enable italic keywords
            functions = true, -- Enable italic functions
            strings = true, -- Enable italic strings
            variables = true -- Enable italic variables
        }
    }
)
vim.g.material_style = "palenight"

-- Hightlight

vim.api.nvim_exec(
    [[
augroup highlight_yank
autocmd!
autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})
augroup END
]],
    true
)
vim.api.nvim_exec([[
autocmd VimEnter * hi HLIndentLine ctermfg=244
]], true)
