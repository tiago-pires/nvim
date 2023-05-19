local M = {
	'nvim-telescope/telescope.nvim',
	version = '0.1.0',
	dependencies = { { 'nvim-lua/plenary.nvim' } },
}

function M.config()
	require("telescope").setup {
		pickers = {
			buffers = {
				show_all_buffers = true,
				sort_lastused = true,
				mappings = {
					i = {
						["<c-x>"] = "delete_buffer",
					},
					n = {
						["<c-x>"] = "delete_buffer",
					}
				}
			}
		}
	}

	-- Telescope
	local builtin = require('telescope.builtin')

	vim.keymap.set("n", "<leader><tab>", "<cmd>Telescope oldfiles<cr>")
	vim.keymap.set("n", "<leader>o", "<cmd>Telescope git_files<cr>")

	vim.keymap.set("n", "<leader>e/", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
	vim.keymap.set("n", "<leader>eg", "<cmd>Telescope git_files<cr>")
	vim.keymap.set("n", "<leader>ef", "<cmd>Telescope find_files<cr>")
	vim.keymap.set("n", "<leader>ed", "<cmd>Telescope diagnostics<cr>")
	vim.keymap.set('n', '<leader>en', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/Dropbox/Notes' }<cr>",
		{ desc = '[E]xplore [N]notes' })
	vim.keymap.set('n', '<leader>ev', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/.config/nvim' }<cr>",
		{ desc = '[E]xplore n[V]im config' })
	vim.keymap.set("n", "<leader>es", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
	vim.keymap.set('n', '<leader>eh', builtin.help_tags, {})

	vim.keymap.set('n', '<leader><space>', builtin.buffers, {})
	vim.keymap.set('n', '<leader>er', builtin.live_grep, {})
	vim.keymap.set('n', '<leader>ea', builtin.command_history, {}) -- again
	vim.keymap.set('n', '<leader>ec', builtin.commands, {}) -- commands
	vim.keymap.set('n', '<leader>en', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/Dropbox/Notes' }<cr>",
		{ desc = '[E]xplore [N]notes' })
	vim.keymap.set('n', '<leader>et', "<cmd>Telescope live_grep search_dirs=~/Dropbox/Notes/",
		{ desc = '[E]xplore [N]notes' })
	vim.keymap.set('n', '<leader>et',
		"<cmd> lua require('telescope.builtin').find_files { cwd = '/Users/tpires/Library/Mobile Documents/iCloud~md~obsidian/Documents/Thoughts'}<cr>",
		{ desc = '[E]xplore [T]ech' })
	vim.keymap.set('n', '<leader>ec',
		"<cmd> lua require('telescope.builtin').find_files { cwd = '/Users/tpires/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding'}<cr>",
		{ desc = '[E]xplore [T]ech' })


	vim.keymap.set('n', '<leader>rc',
		"<cmd> lua require('telescope.builtin').live_grep { cwd = '/Users/tpires/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding'}<cr>",
		{ desc = '[E]xplore [T]ech' })
	vim.keymap.set('n', '<leader>l',
		"<cmd> lua require('telescope.builtin').live_grep { cwd = '~/Dropbox/Notes'}<cr>",
		{ desc = '[E]xplore [T]ech' })


	vim.keymap.set('n', '<leader>ev', "<cmd> lua require('telescope.builtin').find_files { cwd = '~/.config/nvim' }<cr>",
		{ desc = '[E]xplore n[V]im config' })
end

return M
