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
