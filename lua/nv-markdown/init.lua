vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_browser = 'surf'
vim.g.mkdp_markdown_css = ''
vim.g.mkdp_highlight_css = ''
vim.g.mkdp_page_title = '「${name}」'
vim.g.mkdp_filetypes = {'markdown'}
vim.g.mkdp_preview_options = {hide_yaml_meta = 1, disable_filename = 1, theme = 'dark' }
vim.g.mkdp_markdown_css = '/home/allen/.config/nvim/colors/markdown.css'

vim.g.vmt_auto_update_on_save = 1
vim.cmd([[
source ~/.config/nvim/md-snippets.vim
autocmd BufRead,BufNewFile *.md setlocal spell
]])

require 'simple-wiki'.setup {
  path = '~/MyNote', -- your wiki directory - must be set
  link_key_mapping = '<cr>' -- open or create note form link - default: <cr>
}

require'clipboard-image'.setup {
    default = {
        img_dir = 'img',
        img_dir_txt = 'img',
        img_name = function () return os.date('%Y-%m-%d-%H-%M-%S') end,
        affix = '%s'
    },
    markdown = {
        affix = '![](%s)'
    },
}


