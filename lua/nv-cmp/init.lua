--[[--
File              : init.lua
Date              : 08.09.2021
Last Modified Date: 08.09.2021
--]] --
-- local tabnine = require('cmp_tabnine.config')
-- tabnine:setup({
--     max_lines = 50;
--     max_num_results = 5;
--     sort = true;
-- })

vim.g.UltiSnipsRemoveSelectModeMappings = 0
local types = require("cmp.types")
local cmp = require "cmp"

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end
cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({select = true}),
        ["<C-Space>"] = cmp.mapping(
            function(fallback)
                if vim.fn.pumvisible() == 1 then
                    if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
                        return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
                    end
                    vim.fn.feedkeys(t("<C-n>"), "n")
                elseif check_back_space() then
                    vim.fn.feedkeys(t("<cr>"), "n")
                else
                    fallback()
                end
            end,
            {
                "i",
                "s"
            }
        ),
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                if vim.fn.complete_info()["selected"] == -1 and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
                    vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
                elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))
                elseif vim.fn.pumvisible() == 1 then
                    vim.fn.feedkeys(t("<C-n>"), "n")
                elseif check_back_space() then
                    vim.fn.feedkeys(t("<tab>"), "n")
                else
                    fallback()
                end
            end,
            {
                "i",
                "s"
            }
        ),
        ["<S-Tab>"] = cmp.mapping(
            function(fallback)
                if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                    return vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))
                elseif vim.fn.pumvisible() == 1 then
                    vim.fn.feedkeys(t("<C-p>"), "n")
                else
                    fallback()
                end
            end,
            {
                "i",
                "s"
            }
        )
    },
    sources = {
        {
            name = "ultisnips",
            max_item_count = 3
        },
        {
            name = "nvim_lsp",
            max_item_count = 3
        },
        {
            name = "buffer",
            max_item_count = 3
        },
        {
            name = "nvim_lua",
            max_item_count = 2
        },
        {
            name = "path",
            max_item_count = 3
        },
        {
            name = "cmp_tabnine",
            max_item_count = 3
        },
        {
            name = "nuspell",
            max_item_count = 2
        },
        {
            name = "calc",
            max_item_count = 2
        },
        {
            name = "conjure",
            max_item_count = 2
        },
        {
            name = "latex_symbols",
            max_item_count = 2
        },
        {
            name = "vim-dadbod-completion",
            max_item_count = 2
        },
        {
            name = "emoji",
            max_item_count = 3
        },
        {
            name = "spell"
        },
        {
            name = "treesitter",
            max_item_count = 3
        }
    },
    formatting = {
        format = function(entry, vim_item)
            -- fancy icons and a name of kind
            vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

            -- set a name for each source
            vim_item.menu =
                ({
                buffer = "[Buffer]",
                treesitter = "[TS]",
                emoji = "[Emoji]",
                ultisnips = "[UltiSnip]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                cmp_tabnine = "[TN]",
                calc = "[Calc]",
                conjure = "[Conjure]",
                spell = "[Spell]",
                path = "[Path]",
                vim_dadbod_completion = "[DB]",
                latex_symbols = "[Latex]"
            })[entry.source.name]
            return vim_item
        end
    },
    experimental = {
        native_menu = false,
        ghost_text = true
    },
    preselect = types.cmp.PreselectMode.Item,
    completion = {
        autocomplete = {
            types.cmp.TriggerEvent.TextChanged
        },
        completeopt = "menu,menuone,noselect",
        keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
        keyword_length = 2,
        get_trigger_characters = function(trigger_characters)
            return trigger_characters
        end
    }
}

local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50})
  }
}

require("lspconfig").lua.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

require("lspconfig").ccls.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").texlab.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").html.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").sqls.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").python.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").go.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
