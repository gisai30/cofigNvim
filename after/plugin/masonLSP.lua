local status, mason_lsp = pcall(require, 'mason-lspconfig')
if(not mason_lsp) then return end

mason_lsp.setup {
	ensure_installet = {"tsserver"}
}
