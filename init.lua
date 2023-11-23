--Other
function _G.executable(command)
    return vim.fn.executable(command) ~= 0
end

local vimrc = vim.fn.expand("$HOME/.vimrc")

function _G.file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

-- Coq
require('plugins.coq')

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
require('plugins.neoproj')

-- Vimrc
if file_exists(vimrc) then
	vim.cmd('so ~/.vimrc')
end
