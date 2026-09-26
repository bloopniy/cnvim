local M = {}

vim.cmd.highlight('clear')
vim.opt.background = 'dark'
vim.g.colors_name = 'amonnium'

local hi = function(group, opt)
	vim.api.nvim_set_hl(0, group, opt)
end
-- link child to parent
local hi_link = function(child, parent)
	vim.api.nvim_set_hl(0, child, { link = parent })
end

M.opts = {
	primary_bold  = true,
	string_italic = true,
}

M.colors = {
	bg	   		= "#1a1a1a",
	fg	   		= "#e4e4e4",
	dark_gray   = "#3a3a3a",
	gray 		= "#4e4e4e",
	sky    		= "#5f87af",
	indian 		= "#af5f5f",
	sea_green   = "#c0d6c0",
	black       = "#181818",
}

hi("Normal", { bg = M.colors.bg, fg = M.colors.fg })

hi_link("Title",     	      "Normal")
hi_link("Added",              "Normal")
hi_link("ModeMsg",            "Normal")
hi_link("MoreMsg",            "Normal")
hi_link("Special",     	      "Normal")
hi_link("Function",    	      "Normal")
hi_link("@variable",   	      "Normal")
hi_link("Identifier",  	      "Normal")
hi_link("@constant.lua",      "Normal")
hi_link("cCppParen",  	      "String")
hi_link("PreProc",         "Statement")
hi_link("tomlTable",	   "Statement")
hi_link("Type",            "Statement")
hi_link("cInclude",        "Statement")
hi_link("Directory",       "Statement")
hi_link("LineNrBelow",   "LineNrAbove")

hi("LineNr", 	  { fg = M.colors.sky })
hi("LineNrAbove", { fg = M.colors.dark_gray })
hi("StatusLine",  { bg = M.colors.black })

hi("Statement", { fg = M.colors.sky,    bold = M.opts.primary_bold    })
hi("String",    { fg = M.colors.indian, italic = M.opts.string_italic })
hi("Comment",   { fg = M.colors.gray 								  })
hi("Constant",  { fg = M.colors.sea_green                             })
hi("Todo",    	{ fg = M.colors.sea_green                             })

return M
