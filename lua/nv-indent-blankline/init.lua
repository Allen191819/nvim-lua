vim.g.indentLine_char_list = { '|', '¦', '┆', '┊' }
vim.g.indentLine_char = 'c'
vim.g.indentLine_fileTypeExclude = { 'dashboard','floaterm' }

require('smart-cursor').indent_cursor()
