--[[--
File              : keymappings.lua
Date              : 28.08.2021
Last Modified Date: 28.08.2021
--]] --
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", {noremap = true, silent = true})

vim.g.mapleader = " "

-- no hl
vim.api.nvim_set_keymap("n", "<leader>h", ":set hlsearch!<CR>", {noremap = true, silent = true})

-- explore tree
vim.api.nvim_set_keymap("n", "L", ":UndotreeToggle<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>b", ":AerialToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>y", ":Telescope neoclip<CR>", {silent = true})

-- window movement
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {silent = true})

-- indent
vim.api.nvim_set_keymap("v", "<", "<gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", ">", ">gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<Cr>", "<CR>x<BS>", {noremap = true, silent = true})
vim.api.nvim_set_keymap(
    "n",
    "o",
    'o<cmd>lua require("smart-cursor").indent_cursor()<cr>',
    {silent = true, noremap = true}
)

-- switch
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>p", ":BufferLinePickClose<CR>", {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv'", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv'", {noremap = true, silent = true})

-- Tab complete
vim.api.nvim_set_keymap("i", "<expr><TAB>", 'pumvisible() ? "\\<c-n>" : "\\<TAB>"', {noremap = true, silent = true})

-- Better T & F
vim.api.nvim_set_keymap("n", ";", "<Plug>(eft-repeat)", {silent = true})
vim.api.nvim_set_keymap("x", ";", "<Plug>(eft-repeat)", {silent = true})
vim.api.nvim_set_keymap("n", "f", "<Plug>(eft-f)", {silent = true})
vim.api.nvim_set_keymap("x", "f", "<Plug>(eft-f)", {silent = true})
vim.api.nvim_set_keymap("o", "f", "<Plug>(eft-f)", {silent = true})
vim.api.nvim_set_keymap("n", "F", "<Plug>(eft-F)", {silent = true})
vim.api.nvim_set_keymap("x", "F", "<Plug>(eft-F)", {silent = true})
vim.api.nvim_set_keymap("o", "F", "<Plug>(eft-F)", {silent = true})
vim.api.nvim_set_keymap("n", "t", "<Plug>(eft-t)", {silent = true})
vim.api.nvim_set_keymap("x", "t", "<Plug>(eft-t)", {silent = true})
vim.api.nvim_set_keymap("o", "t", "<Plug>(eft-t)", {silent = true})
vim.api.nvim_set_keymap("n", "T", "<Plug>(eft-T)", {silent = true})
vim.api.nvim_set_keymap("x", "T", "<Plug>(eft-T)", {silent = true})
vim.api.nvim_set_keymap("o", "T", "<Plug>(eft-T)", {silent = true})

-- Easy term
vim.api.nvim_set_keymap("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<Cr>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>tv", ":ToggleTerm size=100 direction=vertical<Cr>", {silent = true})

-- Shortcut
vim.api.nvim_set_keymap("n", "W", ":Autoformat<Cr>:w<Cr>", {silent = true})
vim.api.nvim_set_keymap("n", "Q", ":q<Cr>", {silent = true})

vim.api.nvim_set_keymap("n", "M", ":<C-u>Ydc<CR>", {silent = true})
vim.api.nvim_set_keymap("v", "M", ":<C-u>Ydv<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "E", ":<C-u>Yde<CR>", {silent = true})

vim.api.nvim_set_keymap("i", "<c-p>", '<Esc>/<++><CR>:nohlsearch<CR>"_c4l', {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<c-p>", '<Esc>/<++><CR>:nohlsearch<CR>"_c4l', {silent = true, noremap = true})
vim.api.nvim_set_keymap("i", ",p", '<++>', {silent = true, noremap = true})

-- Lsp
vim.api.nvim_set_keymap("n", "<leader>ac", ":Telescope lsp_code_actions<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rc", ":Telescope lsp_range_code_actions<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gp", ":Lspsaga preview_definition<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>lua vim.diagnostic.setloclist()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "g[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "g]", "<cmd>lua vim.diagnostic.goto_next()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gr", ":Telescope lsp_references<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", ",wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", ",wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", ",wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<space>d", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {silent = true, noremap = true})

-- DashBoard / Telescope
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope oldfiles<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>fa", ":Telescope grep_string<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>fb", ":Telescope vim-bookmarks<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>fr", ":Telescope lsp_workspace_diagnostics<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>fm", ":Telescope media_files<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>fs", ":Telescope symbol<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>ds", ":Telescope lsp_document_symbols<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>dr", ":Telescope registers<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "N", ":Telescope aerial<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "//", ":Telescope current_buffer_fuzzy_find<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>sl", ":<C-u>SessionLoad<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>cn", ":DashboardNewFile<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>tc", ":DashboardChangeColorscheme<CR>", {noremap = true, silent = false})


-- Debugger
--vim.api.nvim_set_keymap('n', 'M',           ':e .vimspector.json<Cr> :r! cat /home/allen/.config/nvim/sample_vimspector_json', { silent=true })
--vim.api.nvim_set_keymap('n', 'Z',           ':lua require(\'telescope\').extensions.vimspector.configurations()<Cr>',          { silent=true })

--Markdown
vim.api.nvim_set_keymap("n", "<Leader>mi", ":PasteImg<Cr>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>md", ":e /home/allen/MyNote/index.md<Cr>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>ms", ':lua require "simple-wiki".search()<Cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>mc", ':lua require "simple-wiki".open_or_create()<Cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>mv", ':lua require "simple-wiki".create(true)<Cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>mn", ':lua require("nabla").action()<Cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<Leader>mt", ":TableModeToggle<Cr>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<A-r>", ":Glow<Cr>", {noremap = true, silent = false})

--Latex
vim.api.nvim_set_keymap("n", "<F5>", ':lua require("nabla").action()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<F2>", ':TexViewer<Cr>', {noremap = true, silent = true})

-- Easy swap
vim.api.nvim_set_keymap("n", "<A-w>", ":ISwap<Cr>", {noremap = true, silent = false})
vim.api.nvim_set_keymap("n", "<A-q>", ":ISwapWith<Cr>", {noremap = true, silent = false})

-- Snip run
vim.api.nvim_set_keymap("n", ",sr", ":SnipRun<Cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", ",sr", ":'<,'>SnipRun<Cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", ",sl", ":SnipClose<Cr>", {noremap = true, silent = true})

-- Add header
vim.api.nvim_set_keymap("n", "<F3>", ":AddHeader<Cr>", {noremap = true, silent = true})

-- Align
vim.api.nvim_set_keymap("x", "ga", ":'<,'>EasyAlign<Cr>", {noremap = true, silent = true})

-- Spell
vim.api.nvim_set_keymap("n", "<F6>", ":setlocal spell! spelllang=en_us<Cr>", {noremap = true, silent = true})
-- Lazygit
vim.api.nvim_set_keymap("n", "lg", ":LazyGit<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", ",tx", ":r !figlet", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<up>", ":res +5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<down>", ":res -5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<left>", ":vertical resize-5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<right>", ": vertical resize+5<CR>", {noremap = true, silent = true})
