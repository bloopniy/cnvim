require("core.lazy")
require("core.options")
require("core.mappings")

local clangd = require("lsp.clangd")
vim.lsp.config('clangd', clangd)
