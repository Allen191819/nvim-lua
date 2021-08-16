--require('indent_guides').setup({
--    -- put your options in here
--    indent_levels = 30;
--    indent_guide_size = 4;
--    indent_start_level = 1;
--    indent_enable = true;
--    indent_space_guides = true;
--    indent_tab_guides = false;
--    indent_soft_pattern = '\\s';
--    exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover','undotree','vista'};
--    even_colors = { fg ='#2a3834',bg='#332b36' };
--    odd_colors = {fg='#332b36',bg='#2a3834'};
--})
--require("indent_blankline").setup {
--	char_list = { '|', '¦', '┆', '┊' },
--	buftype_exclude = {"terminal"}
--}
vim.g.indentLine_char_list = { '|', '¦', '┆', '┊' }
vim.g.indentLine_char = 'c'
vim.g.indentLine_fileTypeExclude = { 'dashboard' }
