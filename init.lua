--Other
function _G.executable(command)
    return vim.fn.executable(command) ~= 0
end

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
