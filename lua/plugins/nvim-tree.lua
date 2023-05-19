return {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	},
	config = function()
		require('nvim-tree').setup {
			-- your options here
			view = {
				number = true,
				relativenumber = true,
				width = 40,
				side = 'left',
			},
			renderer = {
				highlight_git = true
			},
		}

		vim.keymap.set("n", "<leader>.", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
	end,
}
