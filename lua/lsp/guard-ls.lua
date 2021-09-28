require("grammar-guard").init()
require("lspconfig").grammar_guard.setup({
	settings = {
		ltex = {
			enabled = { "tex", "bib", "markdown" },
			language = "zh",
			diagnosticSeverity = "information",
			setenceCacheSize = 2000,
			additionalRules = {
				enablePickyRules = true,
				motherTongue = "en",
			},
			trace = { server = "verbose" },
			dictionary = {},
			disabledRules = {},
			hiddenFalsePositives = {},
		},
	},
})
