local actions = require('telescope.actions')
local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.setup {
	defaults = {
		-- ...
		file_ignore_patterns = { "node_modules" },
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["qq"] = actions.close
			},
		},
	},
	pickers = {
		find_files = {
			-- theme = "dropdown",
		}
	},
	extensions = {
		-- ...
	}
}
