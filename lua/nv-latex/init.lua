-- vim.g.livepreview_previewer = 'zathura'
-- vim.g.livepreview_engine = 'xelatex'
-- vim.g.tex_flavor = "xelatex"
-- vim.g.vimtex_view_method = "zathura"
-- vim.g.vimtex_quickfix_mode = 0
-- vim.g.tex_conceal = "abdmg"
-- vim.g.vimtex_compliler_progname = "nvr"
-- vim.g.vimtex_mappings_enabled = 0
-- vim.g.vimtex_text_obj_enabled = 0
-- vim.g.vimtex_motion_enabled = 0
-- default config
require "tex".setup {
    engine = "xelatex", -- tex engine
    compile = {
        events = {"BufWritePost"}, -- compile when buffer is saved
        watchlist = true -- enable feature to compile file when any file from watch list is changed
    },
    viewer = "zathura",
    engines = {
        -- engines config
        tectonic = {},
        latexmk = {
            args = {
                "-pdf",
                ["-interaction"] = "nonstopmode"
            }
        },
        pdflatex = {
            args = {
                ["-interaction"] = "nonstopmode"
            }
        },
        xelatex = {
            args = {
                ["-interaction"] = "nonstopmode"
            }
        },
        lualatex = {
            args = {
                ["-interaction"] = "nonstopmode"
            }
        }
    }
}
