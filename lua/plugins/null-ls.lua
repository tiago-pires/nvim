local M = {
	'jose-elias-alvarez/null-ls.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim'
	}
}

function M.config()
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.markdownlint,
			null_ls.builtins.diagnostics.tidy,
		}
	})
end

return M
