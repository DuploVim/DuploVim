vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree git_status<CR>')
vim.keymap.set('n', '<leader>qqaa', ':qa!<CR>')

-- Tabs
vim.keymap.set('n', '<A-Tab>', ':BufferNext<CR>')
vim.keymap.set('n', '<A-.>', ':BufferNext<CR>')
vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<C-W>', ':BufferClose<CR>')

-- Other
vim.keymap.set('n', '<leader>h', ':e $HOME/.config/nvim/HOTKEYS.txt')
