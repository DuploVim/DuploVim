require("nvim-treesitter.install").prefer_git = true

require'nvim-treesitter.configs'.setup {
	ensure_installed = {'python', 'lua', 'cpp', 'pascal', 'html', 'css', 'javascript', 'rust'},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
