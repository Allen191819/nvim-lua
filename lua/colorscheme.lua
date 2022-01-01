vim.cmd [[colorscheme material]]
require("material").setup(
    {
        contrast = true,
        borders = true,
        popup_menu = "colorful",
        italics = {
            comments = true,
            keywords = false,
            functions = true,
            strings = false,
            variables = false
        },
        contrast_windows = {
            "terminal",
            "packer",
            "qf",
            "NvimTree",
            "vista_kind",
            "dbui",
            "packer",
            "undotree",
            "aerial",
            "floaterm"
        },
        text_contrast = {
            lighter = true,
            darker = true
        },
        disable = {
            background = false,
            term_colors = false,
            eob_lines = false
        }
    }
)
vim.g.material_style = "oceanic"

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
