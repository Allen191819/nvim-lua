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
  ["accelerated-jk"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["calendar.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/calendar.vim"
  },
  ["clipboard-image.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/clipboard-image.nvim"
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
  ["material.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  ["mkdnflow.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/mkdnflow.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
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
  sniprun = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
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
  ["vim-lsp-ultisnips"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-lsp-ultisnips"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vim-smoothie"
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
  ["vista.vim"] = {
    loaded = true,
    path = "/home/allen/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
