local function default_header()
	return {
		'','','',
		'mmmm                 ""#           m    m   "         ',
		'#   "m m   m  mmmm     #     mmm   "m  m" mmm    mmmmm',
		'#    # #   #  #" "#    #    #" "#   #  #    #    # # #',
		'#    # #   #  #   #    #    #   #   "mm"    #    # # #',
		'#mmm"  "mm"#  ##m#"    "mm  "#m#"    ##   mm#mm  # # #',
		'              #                                       ',
		'              "                                       ',
		'','','',
	}
end

local home = vim.fn.expand("$HOME")
local cwd = tostring(vim.loop.cwd())

require('dashboard').setup {
	theme = "doom",
	config = {
		header = default_header(),
        center = {
            {
                icon = '󰙅 ',
                icon_hl = 'Title',
                desc = 'Open neotree',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = ':Neotree focus'
            },
			{
				icon = '󰈞 ',
				icon_hl = 'Title',
				desc = 'Find files',
				desc_hl = 'String',
				key = 'f',
				keymap = 't f',
				key_hl = 'Number',
				action = ':Telescope find_files',
			},
			{
				icon = '󱎋 ',
				icon_hl = 'Title',
				desc = 'Open tutorial',
				desc_hl = 'String',
				key = 't',
				key_hl = 'Number',
				action = ':e ~/.config/nvim/tutor.txt',
			},
			{
				icon = '󰮗 ',
				icon_hl = 'Title',
				desc = 'Find files by content (livegrep)',
				desc_hl = 'String',
				key = 'g',
				keymap = 't g',
				keey_hl = 'Number',
				action = ':Telescope live_grep',
			},
			{
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Display hotkeys',
                desc_hl = 'String',
                key = 'H',
                keymap = 'SPC H',
                key_hl = 'Number',
                action = ':e $HOME/.config/nvim/HOTKEYS.txt'
            },
			{
                icon = ' ',
                icon_hl = 'Title',
                desc = 'GET OUT OF VIM',
                desc_hl = 'String',
                key = 'x',
                keymap = 'SPC q q a a',
                key_hl = 'Number',
                action = ':qa!'
            },
        },
		footer = {

			'','','','You are in ' .. cwd:gsub(home, '~') .. '/', '','',
		}
	}
}
