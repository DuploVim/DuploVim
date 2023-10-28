local lspconfig = require('lspconfig')

if executable("ccls") then lspconfig.ccls.setup {} end
if executable("lua-language-server") then lspconfig.lua_ls.setup {} end
if executable("pylyzer") then lspconfig.pylyzer.setup {} end
if executable("rust-analyzer") then lspconfig.rust_analyzer.setup {} end
