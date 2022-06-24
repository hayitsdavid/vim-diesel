local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {

	"  ██╗   ██╗██╗███╗   ███╗    ██████╗ ██╗███████╗███████╗███████╗██╗       ",
	"  ██║   ██║██║████╗ ████║    ██╔══██╗██║██╔════╝██╔════╝██╔════╝██║       ",
	"  ██║   ██║██║██╔████╔██║    ██║  ██║██║█████╗  ███████╗█████╗  ██║       ",
	"  ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║  ██║██║██╔══╝  ╚════██║██╔══╝  ██║       ",
	"   ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝██║███████╗███████║███████╗███████╗  ",
	"    ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝ ╚═╝╚══════╝╚══════╝╚══════╝╚══════╝  ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("Leader f f", "  > Find file", ":Telescope find_files<CR>"),
	dashboard.button("Leader f r", "  > Recent files", ":Telescope oldfiles<CR>"),
	dashboard.button("Leader f g", "  > Project grep", ":Telescope live_grep<CR>"),
	dashboard.button("u", "  > Update plugins", ":PlugUpdate<CR>"),
	dashboard.button("e", "  > New file", ":enew <CR>"),
	dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()
alpha.setup(dashboard.opts)

-- Send config to alpha
alpha.setup(dashboard.opts)
