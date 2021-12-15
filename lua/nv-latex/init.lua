vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.g.tex_flavor = "latex"
vim.g.conceallevel = 2
vim.g.tex_conceal = "abdmg"
vim.g.vimtex_compliler_progname = "nvr"
vim.g.vimtex_mappings_enabled = 0
vim.g.vimtex_text_obj_enabled = 0
vim.g.vimtex_motion_enabled = 0
vim.g.vimtex_syntax_conceal = {
    accents = 1,
    cites = 1,
    fancy = 1,
    greek = 1,
    math_bounds = 1,
    math_delimiters = 1,
    math_fracs = 1,
    math_super_sub = 1,
    math_symbols = 1,
    sections = 1,
    styles = 1
}
-- require "tex".setup {
--     engine = "xelatex", -- tex engine
--     compile = {
--         events = {"BufWritePost"}, -- compile when buffer is saved
--         watchlist = true -- enable feature to compile file when any file from watch list is changed
--     },
--     viewer = "zathura",
--     engines = {
--         -- engines config
--         tectonic = {},
--         latexmk = {
--             args = {
--                 "-pdf",
--                 ["-interaction"] = "nonstopmode"
--             }
--         },
--         pdflatex = {
--             args = {
--                 ["-interaction"] = "nonstopmode"
--             }
--         },
--         xelatex = {
--             args = {
--                 ["-interaction"] = "nonstopmode"
--             }
--         },
--         lualatex = {
--             args = {
--                 ["-interaction"] = "nonstopmode"
--             }
--         }
--     }
-- }
