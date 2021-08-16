vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_browser = 'chromium'
vim.g.mkdp_markdown_css = ''
vim.g.mkdp_highlight_css = ''
vim.g.mkdp_page_title = '「${name}」'
vim.g.mkdp_filetypes = {'markdown'}
vim.cmd([[
source ~/.config/nvim/md-snippets.vim
autocmd BufRead,BufNewFile *.md setlocal spell
]])

require('mkdnflow').setup({
    default_mappings = false,

    create_dirs = true,

    links_relative_to = 'first',

    filetypes = {md = true, rmd = true, markdown = true},

    evaluate_prefix = true,

    new_file_prefix = [[os.date('%Y-%m-%d_')]]
})


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
