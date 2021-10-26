local preview = require('nvim-preview-csv')

preview.setup {
		max_csv_line = 3000 -- CSV file may has thousands of lines which easily break neovim so choose carefully
}
