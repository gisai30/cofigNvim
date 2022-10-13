local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
	-- formating
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end

end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lsp_flasgs = {
	debounce_text_changes = 150,
}

nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	filetype = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			diganostics = {
				-- Get the language server to recognize the 'vim' global
				globals = { 'vim' }
			},

			workspace = {
				-- Make the server aware of Neovim runtime
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
}
