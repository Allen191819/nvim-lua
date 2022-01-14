require "treesitter-context.config".setup {
	enable = true -- Enable this plugin (Can be enabled/disabled later via commands)
}
require "nvim-treesitter.configs".setup {
	refactor = {
		highlight_definitions = {
			enable = true,
			disable = {"html"}
		},
		smart_rename = {
			enable = false,
			keymaps = {
				smart_rename = "grr"
			}
		}
	},
	matchup = {
		enable = true, -- mandatory, false will disable the whole extension
		disable = {"html"} -- optional, list of language that will be disabled
	},
	highlight = {
		enable = true,
		disable = {"latex", "org"},
		custom_captures = {
			-- Highlight the @foo.bar capture group with the "Identifier" highlight group.
			["foo.bar"] = "Identifier"
		}
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = 200 -- Do not enable for files with more than 1000 lines, int
	},
	playground = {
		enable = true,
		disable = {"html"},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?"
		}
	},
	indent = {
		enable = true
	}
}

require("headlines").setup {
	markdown = {
		headline_pattern = false,
		source_pattern_start = "^```",
		source_pattern_end = "^```$",
		dash_pattern = "^---+$",
		headline_signs = {"Headline"},
		codeblock_sign = false,
		dash_highlight = false
	},
	org = {
		headline_pattern = false,
		source_pattern_start = "#%+[bB][eE][gG][iI][nN]_[sS][rR][cC]",
		source_pattern_end = "#%+[eE][nN][dD]_[sS][rR][cC]",
		dash_pattern = "^-----+$",
		headline_signs = {"Headline"},
		codeblock_sign = false,
		dash_highlight = false
	}
}
