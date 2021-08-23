-- Lspkind
require('lspkind').init({
    with_text = false,
    preset = 'codicons',
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
    },
})

-- Lspsaga
local saga = require 'lspsaga'
saga.init_lsp_saga {
    use_saga_diagnostic_sign = true,
    error_sign = '✗',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    dianostic_header_icon = '   ',
    code_action_icon = ' ',
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
    finder_definition_icon = '  ',
    finder_reference_icon = '  ',
    max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
    finder_action_keys = {
        open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<M-f>', scroll_up = '<M-b>' -- quit can be a table
    },
    code_action_keys = {
        quit = 'q',exec = '<CR>'
    },
    rename_action_keys = {
        quit = '<C-c>',exec = '<CR>'  -- quit can be a table
    },
    definition_preview_icon = ' ',
    border_style = "round",
    rename_prompt_prefix = '➤',
    server_filetype_map = {metals = {'sbt', 'scala'}},
}

-- Lightbulb
require'nvim-lightbulb'.update_lightbulb {
    sign = {
        enabled = true,
        -- Priority of the gutter sign
        priority = 10,
    },
    float = {
        enabled = false,
        text = "💡",
        win_opts = {},
    },
    virtual_text = {
        enabled = true,
        text = "💡",
    },
    status_text = {
        enabled = false,
        text = "💡",
        text_unavailable = ""
    }
}
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]



require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
})



require "lsp_signature".on_attach()
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    doc_lines = 6, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
    floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
    fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
    hint_enable = true, -- virtual hint enable
    use_lspsaga = false,  -- set to true if you want to use lspsaga popup
    max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
    max_width = 80, -- max_width of signature floating_window, line will be wrapped if exceed max_width
    trigger_on_newline = true, -- set to true if you need multiple line parameter, sometime show signature on new line can be confusing, set it to false for #58
    extra_trigger_chars = {"(", ","},
})


vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = false,
    auto_preview = false,
    position = 'right',
    width = 15,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = {icon = "", hl = "TSURI"},
        Module = {icon = "", hl = "TSNamespace"},
        Namespace = {icon = "", hl = "TSNamespace"},
        Package = {icon = "", hl = "TSNamespace"},
        Class = {icon = "𝓒", hl = "TSType"},
        Method = {icon = "ƒ", hl = "TSMethod"},
        Property = {icon = "", hl = "TSMethod"},
        Field = {icon = "", hl = "TSField"},
        Constructor = {icon = "", hl = "TSConstructor"},
        Enum = {icon = "ℰ", hl = "TSType"},
        Interface = {icon = "ﰮ", hl = "TSType"},
        Function = {icon = "", hl = "TSFunction"},
        Variable = {icon = "", hl = "TSConstant"},
        Constant = {icon = "", hl = "TSConstant"},
        String = {icon = "𝓐", hl = "TSString"},
        Number = {icon = "#", hl = "TSNumber"},
        Boolean = {icon = "⊨", hl = "TSBoolean"},
        Array = {icon = "", hl = "TSConstant"},
        Object = {icon = "⦿", hl = "TSType"},
        Key = {icon = "🔐", hl = "TSType"},
        Null = {icon = "NULL", hl = "TSType"},
        EnumMember = {icon = "", hl = "TSField"},
        Struct = {icon = "𝓢", hl = "TSType"},
        Event = {icon = "🗲", hl = "TSType"},
        Operator = {icon = "+", hl = "TSOperator"},
        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
    }
}
