local status, ident = pcall(require, 'indent_blankline')
if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append 'eol:⤦'
-- vim.opt.indent_char = ''
ident.setup {
	show_end_of_line = true,
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	-- markdown = {
	-- 	headline_highlights = {
	-- 		"Headline1",
	-- 		"Headline2",
	-- 		"Headline3",
	-- 		"Headline4",
	-- 		"Headline5",
	-- 		"Headline6",
	-- 	},
	-- 	codeblock_highlight = "CodeBlock",
	-- 	dash_highlight = "Dash",
	-- 	quote_highlight = "Quote",
	-- },
}
