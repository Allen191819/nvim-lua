-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/allen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/allen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/allen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/allen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/allen/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  SimpylFold = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/SimpylFold"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["clipboard-image.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/clipboard-image.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-emoji"] = {
    after_files = { "/home/allen/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/allen/.local/share/nvim/site/pack/packer/opt/cmp-emoji"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "/home/allen/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols/after/plugin/cmp_latex.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/allen/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["fcitx5.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/fcitx5.vim"
  },
  ["format.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["incsearch-easymotion.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/incsearch-easymotion.vim"
  },
  ["incsearch.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/incsearch.vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["iswap.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/iswap.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "vim.call('mkdp#util#install')" },
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["nabla.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nabla.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-cursorword"
  },
  ["nvim-hlchunk"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-hlchunk"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-notify"
  },
  ["nvim-preview-csv"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-preview-csv"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["simple-wiki.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/simple-wiki.nvim"
  },
  ["smart-cursor.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/smart-cursor.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-dbcli.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-dbcli.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  undotree = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["venn.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/venn.nvim"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-autoformat"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-bookmarks"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-eft"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-eft"
  },
  ["vim-expand-region"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-expand-region"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-header"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-header"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-snippets/."
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-youdao-translater"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-youdao-translater"
  },
  vimtex = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",/home/allen/.local/share/nvim/site/pack/packer/start/vim-snippets/."
time([[Runtimepath customization]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
vim.call('mkdp#util#install')
time([[Config for markdown-preview.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'cmp-emoji', 'cmp-latex-symbols'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType latex ++once lua require("packer.load")({'cmp-latex-symbols'}, { ft = "latex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
