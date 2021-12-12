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
require("cmp_nvim_ultisnips").setup {
    show_snippets = "all"
}
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
local types = require("cmp.types")
local cmp = require "cmp"
vim.api.nvim_exec([[
autocmd BufWritePost *.snippets :CmpUltisnipsReloadSnippets
]], true)

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end
local has_any_words_before = function()
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
        return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local press = function(key)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), "n", true)
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
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({select = true}),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
            end,
            {"i", "s", "c"}
        ),
        ["<S-Tab>"] = cmp.mapping(
            function(fallback)
                cmp_ultisnips_mappings.jump_backwards(fallback)
            end,
            {"i", "s", "c"}
        )
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
                latex_symbols = "[Latex]",
                cmdline = "[Cmd]"
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

cmp.setup.cmdline(
    "/",
    {
        sources = {
            {name = "buffer"}
        }
    }
)

cmp.setup.cmdline(
    ":",
    {
        sources = cmp.config.sources(
            {
                {name = "path"}
            },
            {
                {name = "cmdline"}
            }
        )
    }
)
local lspkind = require("lspkind")
cmp.setup {
    formatting = {
        format = lspkind.cmp_format({with_text = true, maxwidth = 50})
    }
}

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(
    function(sumneko_lua)
        sumneko_lua:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
lsp_installer.on_server_ready(
    function(pylsp)
        pylsp:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
lsp_installer.on_server_ready(
    function(html)
        html:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
lsp_installer.on_server_ready(
    function(gopls)
        gopls:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
lsp_installer.on_server_ready(
    function(jdtls)
        jdtls:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
require("lspconfig").ccls.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require("lspconfig").sqls.setup {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
