-- Lspkind
require('lspkind').init({
    with_text = true,
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
    --   "single" "double" "round" "plus"
    border_style = "round",
    rename_prompt_prefix = '➤',
    --   if you don't use nvim-lspconfig you must pass your server name and
    --   the related filetypes into this table
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
        -- Text to show in the popup float
        text = "💡",
        -- Available keys for window options:
        -- - height     of floating window
        -- - width      of floating window
        -- - wrap_at    character to wrap at for computing height
        -- - max_width  maximal width of floating window
        -- - max_height maximal height of floating window
        -- - pad_left   number of columns to pad contents at left
        -- - pad_right  number of columns to pad contents at right
        -- - pad_top    number of lines to pad contents at top
        -- - pad_bottom number of lines to pad contents at bottom
        -- - offset_x   x-axis offset of the floating window
        -- - offset_y   y-axis offset of the floating window
        -- - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
        -- - winblend   transparency of the window (0-100)
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




-- Vista
vim.g.vista_close_on_jump = 0 
vim.g.vista_icon_indent = { "╰─▸ ", "├─▸ " }
vim.g.vista_executive_for = {
    cpp= 'nvim_lsp',
    c= 'nvim_lsp',
    php= 'nvim_lsp',
    python='nvim_lsp',
    go='nvim_lsp',
    lua='nvim_lsp'
}
