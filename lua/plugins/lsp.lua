local lspconfig = require('lspconfig')

if executable("ccls") then lspconfig.ccls.setup {
	root_dir = lspconfig.util.root_pattern('compile_commands.json', '.vscode/compile_commands.json', '.ccls', '.git')
} end
if executable("lua-language-server") then lspconfig.lua_ls.setup {} end
if executable("pyright") then lspconfig.pyright.setup {
	root_dir = vim.loop.cwd
}
elseif executable("pylyzer") then lspconfig.pylyzer.setup {
	root_dir = vim.loop.cwd
} end
if executable("rust-analyzer") then lspconfig.rust_analyzer.setup {} end
if executable("arduino-language-server") then lspconfig.arduino_language_server.setup {} end
if executable("nixd") then require'lspconfig'.nixd.setup{} end
if executable("pasls") then require'lspconfig'.pasls.setup {
	root_dir = vim.loop.cwd
} end

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
