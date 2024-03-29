vim.g.mapleader = ' '

-- FileManagers
vim.keymap.set('n', '<leader>e', '<CMD>Neotree float<CR>')
vim.keymap.set('n', '<leader>E', '<CMD>Neotree left<CR>')
vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open()<CR>', { desc = 'Open mini.files' })

-- Tabs
vim.keymap.set('n', '<A-Tab>', '<CMD>BufferNext<CR>')
vim.keymap.set('n', '<A-.>', '<CMD>BufferNext<CR>')
vim.keymap.set('n', '<A-,>', '<CMD>BufferPrevious<CR>')
vim.keymap.set('n', '<leader>w', '<CMD>BufferClose<CR>')

-- Terminal
vim.keymap.set('n', '<leader>h', '<CMD>ToggleTerm direction=horizontal<CR>', {desc = 'Open horizontal terminal'})
vim.keymap.set('n', '<leader>v', '<CMD>ToggleTerm direction=vertical<CR>', {desc = 'Open vertivel terminal'})
vim.keymap.set('n', '<leader>f', '<CMD>ToggleTerm direction=float<CR>', {desc = 'Open floating terminal'})
vim.keymap.set('t', '<C-R>', '<C-\\><C-n>')

-- Telescope
vim.keymap.set('n', 'tf', '<CMD>Telescope find_files<CR>', {desc = 'Search files'})
vim.keymap.set('n', 'tg', '<CMD>Telescope live_grep<CR>', {desc = 'Telescope live grep'})


-- Other
vim.keymap.set('n', '<leader>H', '<CMD>e $HOME/.config/nvim/HOTKEYS.txt<CR>', {desc = 'Display hotkeys'})
vim.keymap.set('n', '<Esc>', '<CMD>noh<CR>')
vim.keymap.set('n', '<leader>qqaa', '<CMD>qa!<CR>')
vim.keymap.set({'n', 'v'}, '<leader>mksht', '<CMD>lua require("code-shot").shot()<CR>')

-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})

-- Trouble
vim.keymap.set('n', '<leader>T', '<CMD>TroubleToggle<CR>')
vim.keymap.set('n', '<leader>t', '<CMD>Trouble<CR>')

-- Search

vim.keymap.set('n', '<leader>s', '<Plug>SearchNormal')
vim.keymap.set('v', '<leader>s', '<Plug>SearchVisual')
