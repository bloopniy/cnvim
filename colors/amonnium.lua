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
	white       = "#ffffff",
	search 		= "#add6ff", -- 26
	yellow		= "#cca700",
	violet		= "#da70d6",
	blue		= "#179fff",
	red 		= "#f48771",
}

hi("Normal", { bg = M.colors.bg, fg = M.colors.fg })

hi_link("Title",     	                             "Normal")
hi_link("Added",                                     "Normal")
hi_link("ModeMsg",                                   "Normal")
hi_link("MoreMsg",                                   "Normal")
hi_link("Special",     	                             "Normal")
hi_link("Function",    	                             "Normal")
hi_link("cmakeModule", 	                             "Normal")
hi_link("@variable",   	                             "Normal")
hi_link("Identifier",  	                             "Normal")
hi_link("@lsp.type.namespace.cpp",                   "Normal")
hi_link("CurSearch",                            	 "Visual")
hi_link("IncSearch",                                 "Visual")
hi_link("Search",     	                             "Visual")
hi_link("@constant.lua",                             "Normal")
hi_link("cCppParen",  	                             "String")
hi_link("cmakeKWwrite_basic_package_version_file", "Constant")
hi_link("cmakeKWcmake_language",                   "Constant")
hi_link("cmakeCommand",                           "Statement")
hi_link("PreProc",                                "Statement")
hi_link("tomlTable",	                          "Statement")
hi_link("Type",                                   "Statement")
hi_link("cInclude",                               "Statement")
hi_link("Directory",                              "Statement")
hi_link("LineNrBelow",                          "LineNrAbove")

--hi("Search",  		{ bg = M.colors.search })
hi("LineNr", 	    			{ fg = M.colors.sky 								  })
hi("LineNrAbove",   			{ fg = M.colors.dark_gray							  })
hi("StatusLine",    			{ bg = M.colors.black 								  })
hi("Statement",     			{ fg = M.colors.sky,    bold = M.opts.primary_bold    })
hi("String",        			{ fg = M.colors.indian, italic = M.opts.string_italic })
hi("Comment",       			{ fg = M.colors.gray 								  })
hi("Constant",      			{ fg = M.colors.sea_green                             })
hi("Todo",    	    			{ fg = M.colors.sea_green                             })
hi("DiagnosticWarn",            { fg = M.colors.yellow              				  })
hi("DiagnosticError",           { fg = M.colors.red									  })
hi("DiagnosticUnderlineWarn",   { underline = true, sp = M.colors.yellow              })
hi("DiagnosticUnderlineError",  { underline = true, sp = M.colors.red                 })

-- Source - https://stackoverflow.com/a/73365602
-- Posted by lcheylus, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-09-27, License - CC BY-SA 4.0
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight_yank', {}),
	desc = 'Hightlight selection on yank',
	pattern = '*',
	callback = function()
		vim.highlight.on_yank { higroup = 'IncSearch', timeout = 250 }
	end,
})

return M
