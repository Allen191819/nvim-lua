require('texmagic').setup{
    engines = {
        pdflatex = {    -- This has the same name as a default engine but would
                        -- be preferred over the same-name default if defined
            executable = "latexmk",
            args = {
                "-pdflatex",
                "-interaction=nonstopmode",
                "-synctex=1",
                "-outdir=.build",
                "-pv",
                "%f"
            },
            isContinuous = false
        },
        lualatex = {    -- This is *not* one of the defaults, but it can be
                        -- called via magic comment if defined here
            executable = "latexmk",
            args = {
                "-pdflua",
                "-interaction=nonstopmode",
                "-synctex=1",
                "-pv",
                "%f"
            },
            isContinuous = false
        }
    }
}
vim.g.livepreview_previewer = 'evince'
vim.g.livepreview_engine = 'pdflatex'
vim.g.tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
vim.g.tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
vim.g.tex_conceal_frac=1
vim.g.tex_conceal="abdgm"
