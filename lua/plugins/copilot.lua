return {
	'github/copilot.vim',
	config = function()
		-- suggestion color
		vim.api.nvim_set_hl(0, 'Copilot', { fg = '#83a598' })
	end
}
