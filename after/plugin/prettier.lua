local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
	bin = 'prettier',
	filetype = {
		'css',
		'javascript',
		'javascriptreact',
		'typescript',
		'typescriptreact',
		'json',
		'scss',
		'less'
	},
	cli_options = {
		tconfig_precedence = "prefer-file",
	}
}
