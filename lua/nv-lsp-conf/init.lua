-- Lspkind
require("lspkind").init(
    {
        with_text = true,
        preset = "codicons",
        symbol_map = {
            TreeSitter = "侮",
            Text = "",
            Method = "",
            Function = "",
            Constructor = "",
            Field = "ﰠ",
            Variable = "",
            Class = "ﴯ",
            Interface = "",
            Module = "",
            Property = "ﰠ",
            Unit = "塞",
            Value = "",
            Enum = "",
            Keyword = "",
            Snippet = "",
            Color = "",
            File = "",
            Reference = "",
            Folder = "",
            EnumMember = "",
            Constant = "",
            Struct = "ﴯפּ",
            Event = "",
            Operator = "",
            TypeParameter = "ﰧ"
        }
    }
)
-- Lsp installer
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(
    function(server)
        local opts = {}

        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
    end
)
lsp_installer.settings(
    {
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
            }
        }
    }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false
    }
)
local signs = {Error = "✗ ", Warn = " ", Hint = " ", Info = ""}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
local border = {
    {"╭", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╮", "FloatBorder"},
    {"│", "FloatBorder"},
    {"╯", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╰", "FloatBorder"},
    {"│", "FloatBorder"}
}
local function goto_definition(split_cmd)
    local util = vim.lsp.util
    local log = require("vim.lsp.log")
    local api = vim.api

    -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
    local handler = function(_, result, ctx)
        if result == nil or vim.tbl_isempty(result) then
            local _ = log.info() and log.info(ctx.method, "No location found")
            return nil
        end

        if split_cmd then
            vim.cmd(split_cmd)
        end

        if vim.tbl_islist(result) then
            util.jump_to_location(result[1])

            if #result > 1 then
                util.set_qflist(util.locations_to_items(result))
                api.nvim_command("copen")
                api.nvim_command("wincmd p")
            end
        else
            util.jump_to_location(result)
        end
    end

    return handler
end

vim.lsp.handlers["textDocument/definition"] = goto_definition("split")
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = border})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {border = border})

vim.diagnostic.config(
    {
        virtual_text = {
            prefix = "" -- Could be '●', '▎', 'x'
        }
    }
)
cfg = {
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    doc_lines = 8, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
    fix_pos = true, -- set to true, the floating window will not auto-close until finish all parameters
    floating_window_above_cur_line = true,
    hint_enable = true, -- virtual hint enable
    hint_prefix = "𝓒 ",
    hint_scheme = "String",
    hi_parameter = "Search", -- how your parameter will be highlight
    max_height = 15, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    max_width = 100, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    transpancy = 10, -- set this value if you want the floating windows to be transpant (100 fully transpant), nil to disable(default)
    handler_opts = {
        border = "double" -- double, single, shadow, none
    },
    trigger_on_newline = false, -- set to true if you need multiple line parameter, sometime show signature on new line can be confusing, set it to false for #58
    zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
    debug = false, -- set to true to enable debug logging
    log_path = "debug_log_file_path", -- debug log path
    padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
    shadow_blend = 36, -- if you using shadow as border use this set the opacity
    shadow_guibg = "Gray", -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
    toggle_key = "<M-x>" -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
}

require "lsp_signature".on_attach(cfg)

require("aerial").setup {
    backends = {"treesitter", "markdown", "lsp"},
    close_behavior = "auto",
    default_bindings = true,
    default_direction = "prefer_right",
    filter_kind = {
        "Class",
        "Constructor",
        "Enum",
        "Function",
        "Interface",
        "Module",
        "Method",
        "Struct"
    },
    highlight_mode = "split_width",
    highlight_on_jump = 300,
    link_folds_to_tree = false,
    link_tree_to_folds = true,
    manage_folds = false,
    max_width = 40,
    min_width = 25,
    nerd_font = "auto",
    on_attach = nil,
    open_automatic = false,
    placement_editor_edge = false,
    post_jump_cmd = "normal! zz",
    close_on_select = false,
    show_guides = false,
    float = {
        border = "rounded",
        row = 1,
        col = 0,
        max_height = 100,
        min_height = 4
    },
    treesitter = {
        update_delay = 300
    },
    markdown = {
        update_delay = 300
    }
}
