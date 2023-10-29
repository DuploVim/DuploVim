local lspconfig = require('lspconfig')

if executable("ccls") then lspconfig.ccls.setup {} end
if executable("lua-language-server") then lspconfig.lua_ls.setup {} end
if executable("pyright") then lspconfig.pyright.setup {
	root_dir = vim.loop.cwd
}
elseif executable("pylyzer") then lspconfig.pylyzer.setup {
	root_dir = vim.loop.cwd
} end
if executable("rust-analyzer") then lspconfig.rust_analyzer.setup {} end

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
