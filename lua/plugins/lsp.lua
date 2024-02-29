local lspconfig = require('lspconfig')
local navic = require('nvim-navic')

if executable("clangd") then lspconfig.clangd.setup({
	root_dir = lspconfig.util.root_pattern('compile_commands.json', '.vscode/compile_commands.json', '.ccls', '.git'),
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("tsserver") then lspconfig.tsserver.setup({
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end,
}) end
if executable("lua-language-server") then lspconfig.lua_ls.setup({
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("pyright") then lspconfig.pyright.setup({
	root_dir = vim.loop.cwd,
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("rust-analyzer") then lspconfig.rust_analyzer.setup({
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("arduino-language-server") then lspconfig.arduino_language_server.setup({
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("nixd") then require'lspconfig'.nixd.setup({
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end
if executable("pasls") then require'lspconfig'.pasls.setup({
	root_dir = vim.loop.cwd
}) end
if executable("typst-lsp") then lspconfig.typst_lsp.setup({
	on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
}) end

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
