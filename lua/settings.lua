vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.exrc = true
vim.o.hidden = true
vim.o.secure = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.background = 'light'
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoread = true
vim.o.ruler = true
vim.o.cursorline = true
vim.o.magic = true
--vim.o.foldcolumn = 'auto'
vim.o.foldlevel = 3
vim.o.foldenable = true
vim.o.foldmethod = 'indent'
vim.o.confirm = true
vim.o.autoindent = true
vim.o.cindent = true
vim.o.smartindent = true
vim.o.scrolloff = 5
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.history = 5000
vim.o.swapfile = false
vim.o.wrap = false
vim.o.gdefault = true
vim.o.encoding = 'utf-8'
vim.o.fencs = 'utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936'
vim.o.fileencodings = 'ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1'
vim.o.laststatus = 2
vim.o.showtabline = 2
vim.o.cmdheight = 1
vim.o.clipboard = 'unnamedplus'
vim.o.linespace = 0
vim.o.updatetime = 300
vim.o.timeoutlen = 250
vim.o.showmode = false
vim.o.backup = true
vim.o.writebackup = true
vim.o.mouse='a'
vim.o.wildmenu = true
vim.o.guifont = 'JetBrainsMono\\ Nerd\\ Font\\ Mono:h18'
vim.o.whichwrap = vim.o.whichwrap..'<,>,h,l'
--vim.o.iskeyword = vim.o.iskeyword..'_,$,@,%,#,-'
vim.o.selection = 'exclusive'
vim.o.selectmode = 'mouse,key'
vim.o.completeopt = "menuone,noselect"
vim.o.showmatch = true
vim.o.matchtime = 1
vim.o.shortmess = vim.o.shortmess..'c'
vim.cmd([[
set fillchars=eob:\ ,vert:\┊
set list lcs=tab:\ \ ,trail:▫
]])
--vim.o.t_Co = '256'
vim.o.conceallevel = 1
vim.o.termguicolors = true
vim.o.backupdir='/home/allen/.config/nvim/tmp/backup'
vim.o.directory='/home/allen/.config/nvim/tmp/backup'

--vim.cmd('silent !mkdir -p ~/.config/nvim/tmp/backup')
--vim.cmd('silent !mkdir -p ~/.config/nvim/tmp/undo')
--vim.cmd('silent !mkdir -p ~/.config/nvim/tmp/sessions')
if vim.fn.has('persistent_undo')
then
    vim.o.undofile=true
    vim.o.undodir='/home/allen/.config/nvim/tmp/undo'
end

