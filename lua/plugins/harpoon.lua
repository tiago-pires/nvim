local M = {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()

		local mark = require('harpoon.mark')
		local ui = require('harpoon.ui')

		require('harpoon').setup()
		vim.keymap.set("n", "<leader>ei", mark.add_file)
		vim.keymap.set("n", "<c-e>", ui.toggle_quick_menu)
		vim.keymap.set("n", "<c-4>", function() ui.nav_file(1) end)
		vim.keymap.set("n", "<c-5>", function() ui.nav_file(2) end)
		vim.keymap.set("n", "<c-6>", function() ui.nav_file(3) end)
		vim.keymap.set("n", "<c-8>", function() ui.nav_file(4) end)
		vim.keymap.set("n", "<c-9>", function() ui.nav_file(4) end)
	end
}

return M
