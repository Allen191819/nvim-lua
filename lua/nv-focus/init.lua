local focus = require('focus')
focus.width = 160
focus.height = 55
focus.cursorline = true
focus.signcolumn = true
focus.winhighlight = true
focus.excluded_filetypes = {'undotree', 'vista_kind', 'NvimTree','aerial','qt'}
vim.cmd('hi link UnfocusedWindow CursorLine')
vim.cmd('hi link FocusedWindow VisualNOS')
