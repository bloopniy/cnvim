local nmap = function(map, callback)
	vim.keymap.set('n', map, callback)
end

-- explorer
nmap("<C-n>", "<cmd>Ex<cr>")
-- open terminal emulator
nmap("<C-t>", function()
	vim.cmd('below term')
	vim.cmd('resize 5')
end) 

-- exit from terminal mod by esc
vim.keymap.set('t', '<esc>', "<C-\\><C-n>")


-- toggle lsp
nmap("<C-l>", function()
	local enabled =	vim.lsp.is_enabled('clangd')
	if enabled then
		vim.cmd.lsp('disable')
	else 
		vim.cmd.lsp('enable')
	end
end) 


