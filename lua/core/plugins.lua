local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{ 'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		dependencies = {
			'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim', 's1n7ax/nvim-window-picker'
		}
	},
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },
	{ 'catppuccin/nvim' },
	{ 'hrsh7th/vim-vsnip' }, { 'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'},
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
 	 	dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{ 'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
	{ 'vimsence/vimsence' },
	{
			'windwp/nvim-autopairs',
			event = 'InsertEnter',
			opts = {}
	},
	{
			'folke/which-key.nvim',
			event = 'VeryLazy',
			init = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 300
			end,
		opts = {

		}
	},
	{ 'codota/tabnine-nvim', build = './dl_binaries.sh' },
	{ 'numToStr/Comment.nvim' },
	{'romgrk/barbar.nvim',
			dependencies = {
					'lewis6991/gitsigns.nvim',
					'nvim-tree/nvim-web-devicons',
			},
			init = function() vim.g.barbar_auto_setup = false end,
			opts = {
			},
	 		version = '^1.7.0', -- optional: only update when a new 1.x version is released
		},
	{
			'ThePrimeagen/refactoring.nvim',
			dependencies = {
					'nvim-lua/plenary.nvim',
					'nvim-treesitter/nvim-treesitter',
			},
			config = function()
					require('refactoring').setup()
			end,
		},
		{
				'kdheepak/lazygit.nvim',
				-- optional for floating window border decoration
				dependencies = {
						'nvim-lua/plenary.nvim',
				},
		},
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
	{ 'mattn/emmet-vim' },
	{ 'dcampos/cmp-emmet-vim' },
	--[[ { 'mfussenegger/nvim-dap' },
	{ 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'},
		config = function()
			local dap = require('dap')
			local dapui = require('dapui')
			dapui.setup()
			dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
			dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end
			dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end
		end
	}, ]]
	{'akinsho/toggleterm.nvim', version = '*', config = true },
	{
			'nvim-telescope/telescope.nvim', tag = '0.1.4',
			dependencies = { 'nvim-lua/plenary.nvim' }
		},
	{
		'glacambre/firenvim',
		lazy = not vim.g.started_by_firenvim,
			build = function()
				vim.fn['firenvim#install'](0)
			end
	},
	{
			'kylechui/nvim-surround',
			version = '*', -- Use for stability; omit to use `main` branch for the latest features
			event = 'VeryLazy',
			config = function()
			require('nvim-surround').setup({})
			end
	},
	{
		'pluffie/neoproj',
		cmd = { 'ProjectOpen', 'ProjectNew' },
	},
	{ 'DuploVim/ctrl-z', cond = vim.env.DUPLO_CTRL_Z_WQA == '1' },
	{ 'DuploVim/ctrl-s', cond = vim.env.DUPLO_CTRL_S_W == '1' },
	{ 'DuploVim/ctrl-a', cond = vim.env.DUPLO_CTRL_A_SELECT == '1'},
	{ 'DuploVim/session-loader' },
	{ 'christoomey/vim-tmux-navigator' },
	{ 'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'stevearc/oil.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'folke/todo-comments.nvim',
		opts = {},
	},
	{ 'petertriho/nvim-scrollbar' },
	{ 'yamatsum/nvim-cursorline' },
	{ 'SmiteshP/nvim-navic',
		dependencies = { 'neovim/nvim-lspconfig'},
	},
	{ 'voldikss/vim-browser-search' },
	{ 'eandrju/cellular-automaton.nvim' },
	{ 'elkowar/yuck.vim' },
	{ 'rust-lang/rust.vim' },
	{
		'folke/flash.nvim',
		event = 'VeryLazy',
		---@type Flash.Config
		opts = {},
		keys = {
		},
	},
	{ 'echasnovski/mini.nvim', version = false },
	{ 'nvim-tree/nvim-web-devicons'},
	{
			'2kabhishek/nerdy.nvim',
			dependencies = {
					'stevearc/dressing.nvim',
					'nvim-telescope/telescope.nvim',
			},
			cmd = 'Nerdy',
	},
	{ 'rcarriga/nvim-notify' },
	{ 'matbme/JABS.nvim' },
	{ 'mfussenegger/nvim-lint' },
	{ 'lvimuser/lsp-inlayhints.nvim' },
	{
		'ellisonleao/carbon-now.nvim',
		lazy = true,
		cmd = 'CarbonNow',
		---@param opts cn.ConfigSchema
		opts = { [[ your custom config here ]] },
	},
	{
		'kaarmu/typst.vim',
		ft = 'typst',
		lazy=false,
	},
	{
		'folke/twilight.nvim',
	},
	{
		'folke/persistence.nvim',
		event = 'BufReadPre',
		opts = {},
	},
	--[[ {
		'folke/drop.nvim',
		event = 'VimEnter',
		config = function()
			require('drop').setup({
				theme = 'stars',
				max = 15,
			})
		end,
	}, ]]
	{
		'stevearc/aerial.nvim',
		opts = {},
		dependencies = {
			 'nvim-treesitter/nvim-treesitter',
			 'nvim-tree/nvim-web-devicons'
		},
	},
	{
		'ray-x/go.nvim',
		dependencies = {	-- optional packages
			'ray-x/guihua.lua',
			'neovim/nvim-lspconfig',
			'nvim-treesitter/nvim-treesitter',
		},
		config = function()
			require('go').setup()
		end,
		lazy = false,
		ft = {'go', 'gomod'},
	},
	{
		'nativerv/cyrillic.nvim',
		event = { 'VeryLazy' },
		config = function()
			require('cyrillic').setup({
				no_cyrillic_abbrev = false,
			})
		end,
	},
	{ 'xiyaowong/transparent.nvim' },
	{ 'p00f/cphelper.nvim' },
	{
		'chrisgrieser/nvim-origami',
		event = 'BufReadPost', -- later or on keypress would prevent saving folds
		opts = true, -- needed even when using default config
	},
	{ 'rktjmp/paperplanes.nvim' },
	{ 'https://git.sr.ht/~reggie/licenses.nvim' },
	{ 'folke/neodev.nvim', opts = {} },
})
