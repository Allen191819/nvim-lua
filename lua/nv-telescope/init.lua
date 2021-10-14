require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"
        }
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = {"png", "webp", "jpg", "jpeg", "pdf", "mp4"},
            find_cmd = "fd" -- find command (defaults to `fd`)
        },
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        dbcli = {
            pgcli = {
                prompt_title = "Pgcli History",
                history_file = os.getenv("HOME") .. "/.config/pgcli/history"
            },
            mssql_cli = {
                prompt_title = "Mssql-cli History",
                history_file = os.getenv("HOME") .. "/.config/mssqlcli/history"
            },
            on_query_select = {
                open_in_scratch_buffer = true,
                add_query_to_register = false
            }
        }
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
        horizontal = {
            mirror = false
        },
        vertical = {
            mirror = false
        }
    },
    file_sorter = require "telescope.sorters".get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
    file_previewer = require "telescope.previewers".vim_buffer_cat.new,
    grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
    qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker
}
require("neoclip").setup(
    {
        history = 1000,
        filter = nil,
        enable_persistant_history = false,
        db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
        preview = true,
        default_register = '"',
        content_spec_column = false,
        on_paste = {
            set_reg = false
        },
        keys = {
            i = {
                select = "<cr>",
                paste = "<c-p>",
                paste_behind = "<c-k>",
                custom = {}
            },
            n = {
                select = "<cr>",
                paste = "p",
                paste_behind = "P",
                custom = {}
            }
        }
    }
)
require("telescope").load_extension("media_files")
require("telescope").load_extension("fzf")
require("telescope").load_extension("neoclip")
require("telescope").load_extension("ultisnips")
require("telescope").load_extension("dbcli")
require("telescope").load_extension("projects")
require("telescope").load_extension("vim_bookmarks")
