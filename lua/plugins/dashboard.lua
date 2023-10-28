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

require('dashboard').setup {
	theme = "doom",
	config = {
		header = default_header(),
        center = {
            {
                icon = '󰙅 ',
                icon_hl = 'Title',
                desc = 'Open or focus neotree',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = ':Neotree focus'
            },
			{
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Display hotkeys',
                desc_hl = 'String',
                key = 'h',
                keymap = 'SPC h',
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
        }
	}
}
