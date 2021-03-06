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
local tabnine = require("cmp_tabnine.config")
tabnine:setup(
    {
        max_lines = 200,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true
    }
)
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
local lspkind = require("lspkind")
local source_menu = {
    buffer = "[Buffer]",
    treesitter = "[TS]",
    emoji = "[Emoji]",
    ultisnips = "[UltiSnip]",
    nvim_lsp = "[LSP]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[TN]",
    calc = "[Calc]",
    spell = "[Spell]",
    path = "[Path]",
    vim_dadbod_completion = "[DB]",
    latex_symbols = "[Latex]",
    cmdline = "[Cmd]"
}

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
            max_item_count = 4
        },
        {
            name = "cmp_tabnine",
            max_item_count = 3
        },
        {
            name = "calc",
            max_item_count = 2
        },
        {
            name = "latex_symbols",
            max_item_count = 3
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
            name = "spell",
            max_item_count = 3
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
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_menu[entry.source.name]
            if entry.source.name == "cmp_tabnine" then
                if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
                    menu = entry.completion_item.data.detail .. " " .. menu
                end
                vim_item.kind = "???"
            end
            vim_item.menu = menu
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

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(
    function(sumneko_lua)
        sumneko_lua:setup {
            capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end
)
lsp_installer.on_server_ready(
    function(clangd)
        clangd:setup {
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
