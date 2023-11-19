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

-- Terminal
vim.keymap.set('n', '<leader>h', ':ToggleTerm direction=horizontal<CR>', {desc = "Open horizontal terminal"})
vim.keymap.set('n', '<leader>v', ':ToggleTerm direction=vertical<CR>', {desc = "Open vertivel terminal"})
vim.keymap.set('n', '<leader>f', ':ToggleTerm direction=float<CR>', {desc = "Open floating terminal"})
vim.keymap.set('t', '<C-R>', '<C-\\><C-n>')

-- Telescope
vim.keymap.set('n', 'tf', ':Telescope find_files<CR>', {desc = "Search files"})
vim.keymap.set('n', 'tg', ':Telescope live_grep<CR>', {desc = "Telescope live grep"})

-- Other
vim.keymap.set('n', '<leader>H', ':e $HOME/.config/nvim/HOTKEYS.txt<CR>', {desc = 'Display hotkeys'})
vim.keymap.set('n', '<Esc>', ':noh<CR>')
