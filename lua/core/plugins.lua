local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'nvim-neo-tree/neo-tree.nvim',
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
		}
	},
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },
	{ 'catppuccin/nvim' },
	{ 'hrsh7th/vim-vsnip' }, { 'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'ms-jpq/coq_nvim', build = ":COQdeps"}, {'ms-jpq/coq.artifacts', branch = 'artifacts'}, {'ms-jpq/coq.thirdparty', branch = '3p' },
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
 	 	dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{ 'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
	{ 'vimsence/vimsence' },
	{
    	'windwp/nvim-autopairs',
    	event = "InsertEnter",
    	opts = {}
	},
	{
  		"folke/which-key.nvim",
  		event = "VeryLazy",
  		init = function()
    		vim.o.timeout = true
    		vim.o.timeoutlen = 300
  		end,
		opts = {

		}
	},
	{ 'codota/tabnine-nvim', build = "./dl_binaries.sh" },
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
    	"ThePrimeagen/refactoring.nvim",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-treesitter/nvim-treesitter",
    	},
    	config = function()
      		require("refactoring").setup()
    	end,
  	},
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ 'mattn/emmet-vim' },
	{ 'dcampos/cmp-emmet-vim' },
	{ 'mfussenegger/nvim-dap' },
	{ 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
			dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
			dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
		end
	},
	{'akinsho/toggleterm.nvim', version = "*", config = true },
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.4',
    	dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
		'glacambre/firenvim',
		lazy = not vim.g.started_by_firenvim,
    	build = function()
    		vim.fn["firenvim#install"](0)
    	end
	},
	{ 'mg979/vim-visual-multi' },
	{
    	"kylechui/nvim-surround",
    	version = "*", -- Use for stability; omit to use `main` branch for the latest features
    	event = "VeryLazy",
    	config = function()
			require("nvim-surround").setup({})
    	end
	},
	{
		"pluffie/neoproj",
		cmd = { "ProjectOpen", "ProjectNew" },
	},
})
