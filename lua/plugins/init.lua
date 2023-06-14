return {
	'tpope/vim-commentary', -- vim script
	'tpope/vim-fugitive', -- vim scripts
	'tpope/vim-unimpaired',
	'mbbill/undotree', -- vim script
	'preservim/vim-markdown',
	'jghauser/follow-md-links.nvim',
	'madox2/vim-ai', -- vim script
	'mattn/emmet-vim', -- vim script
	'Exafunction/codeium.vim', -- vim script
	{ 'ekickx/clipboard-image.nvim',
		config = function()
			require('clipboard-image').setup({
				img_dir = ':~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding/img'
			})
		end
	},
	{
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup() end
	},
	{
		'windwp/nvim-ts-autotag',
		config = function() require('nvim-ts-autotag').setup() end
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = function() require('colorizer').setup() end
	},
	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup() end
	}
}
