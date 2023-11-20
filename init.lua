--Other
function _G.executable(command)
    return vim.fn.executable(command) ~= 0
end

-- Coq
vim.cmd("let g:coq_settings = { 'auto_start': 'shut-up' }")

-- Basic
require('core.plugins')
require('core.mappings')
require('core.colors')
require('core.configs')

--Plugins
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.dashboard')
require('plugins.lualine')
require('plugins.vimsence')
require('plugins.tabnine')
require('plugins.comment')
require('plugins.gitsigns')
require('plugins.ibl')
require('plugins.toggleterm')
require('plugins.nvim-dap')
