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
  ["calendar.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/calendar.vim"
  },
  ["clipboard-image.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/clipboard-image.nvim"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/compe-tabnine"
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
  ["focus.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/focus.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/friendly-snippets"
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
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-cursorword"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua"
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
  ["project.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["simple-wiki.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/simple-wiki.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/tabout.nvim"
  },
  ["telescope-dbcli.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-dbcli.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\1\2/\0\0\1\0\2\0\0033\0\0\0005\0\1\0G\0\1\0\rrequires\1\2\0\0\19tami5/sql.nvim\0" },
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
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
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
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
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-header"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-header"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-snippets"
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
  ["vim-translator"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-translator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\1\2/\0\0\1\0\2\0\0033\0\0\0005\0\1\0G\0\1\0\rrequires\1\2\0\0\19tami5/sql.nvim\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end