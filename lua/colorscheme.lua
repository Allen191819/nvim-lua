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
            "earial"
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
vim.g.material_style = "palenight"

-- Lualine
local colors = {
    bg = "#202328",
    fg = "#bbc2cf",
    yellow = "#ECBE7B",
    cyan = "#008080",
    darkblue = "#081633",
    green = "#98be65",
    orange = "#FF8800",
    violet = "#a9a1e1",
    magenta = "#c678dd",
    blue = "#1793d1",
    red = "#ec5f67"
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand "%:p:h"
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end
}

local config = {
    options = {
        theme = "palenight"
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {{"branch",color={fg=colors.yellow}}, "diff", "diagnostics"},
        lualine_c = {{"filename",color={fg=colors.magenta}}, "lsp_progress"},
        lualine_x = {},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            "filename",
            {
                function()
                    return vim.api.nvim_buf_get_option(0, "filetype")
                end,
                icon = "%=勇"
            }
        },
        lualine_x = {"possible"},
        lualine_y = {},
        lualine_z = {"location"}
    }
}

local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
end

ins_left {
    -- filesize component
    "filesize",
    cond = conditions.buffer_not_empty
}

ins_left {
    -- Lsp server name .
    function()
        local msg = "No Active Lsp"
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
            end
        end
        return msg
    end,
    icon = "%= LSP:",
    color = {fg = colors.red, gui = "bold"}
}

ins_right {
    "o:encoding", -- option component same as &encoding in viml
    fmt = string.upper, -- I'm not sure why it's upper case either ;)
    cond = conditions.hide_in_width,
    color = {fg = colors.violet, gui = "bold"}
}

ins_right {
    "filetype",
    color = {fg = colors.blue}
}

ins_right {
    function()
        return ""
    end,
    color = {fg = colors.blue, gui = "bold"}
}

require("lualine").setup(config)

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
