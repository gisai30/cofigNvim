local status, modes = pcall(require, 'modes')
if (not status) then return end

modes.setup({
	colors = {
		copy = "#eed49f",
		delete = "#e78284",
		insert = "#a6d189",
		visual = "#ea76cb",
	},

	-- Set opacity for cursorline and number background
	line_opacity = 0.30,

	-- Enable cursor highlights
	set_cursor = true,

	-- Enable cursorline initially, and disable cursorline for inactive windows
	-- or ignored filetypes
	set_cursorline = true,

	-- Enable line number highlights to match cursorline
	set_number = true,

	-- Disable modes highlights in specified filetypes
	-- Please PR commonly ignored filetypes
	ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})
