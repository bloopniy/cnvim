require("core.lazy")
require("core.options")
require("core.mappings")

local clangd = require("lsp.clangd")
vim.lsp.config('clangd', clangd)


vim.api.nvim_create_autocmd(
	"VimEnter", {
		callback = function()
			require("lazy").update({
				show = false
			})
		end
	}
)
