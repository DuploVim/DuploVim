local lspconfig = require('lspconfig')
local coq = require('coq')

if executable("ccls") then lspconfig.ccls.setup(coq.lsp_ensure_capabilities( {
	root_dir = lspconfig.util.root_pattern('compile_commands.json', '.vscode/compile_commands.json', '.ccls', '.git')
})) end
if executable("lua-language-server") then lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities( {}))
end
if executable("pyright") then lspconfig.pyright.setup(coq.lsp_ensure_capabilities( {
	root_dir = vim.loop.cwd
}))
elseif executable("pylyzer") then lspconfig.pylyzer.setup(coq.lsp_ensure_capabilities( { 
	root_dir = vim.loop.cwd
})) end
if executable("rust-analyzer") then lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities( {}))
end
if executable("arduino-language-server") then lspconfig.arduino_language_server.setup(coq.lsp_ensure_capabilities( {}))
end
if executable("nixd") then require'lspconfig'.nixd.setup(coq.lsp_ensure_capabilities({} ))
end
if executable("pasls") then require'lspconfig'.pasls.setup(coq.lsp_ensure_capabilities( {
	root_dir = vim.loop.cwd
})) end

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
