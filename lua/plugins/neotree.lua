vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})

local function get_hijack()
	if vim.env.DUPLO_USE_NEOTREE_BY_DEFAULT == "1" then
		return "open_default"
	else
		return "disabled"
	end
end

require("neo-tree").setup {
	popup_border_style = "rounded",
	filesystem = {
		hijack_netrw_behavior = get_hijack(),
		filtered_items = {
			visiable = true,
			hide_dotfiles = false,
			hide_gitignored = false,
		},
	},
	window = {
		position = "float",
	},
}
