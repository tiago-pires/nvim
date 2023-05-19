local M = {
	'neovim/nvim-lspconfig',
	dependencies = { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
}

function M.config()
	require('mason').setup()
	require('mason-lspconfig').setup({
		ensure_installed = { "tsserver", "tailwindcss", "astro", "html", "cssls", "intelephense", "grammarly" }
	})
	-- Mappings.
	-- See `:help vim.diagnostic.*` for documentation on any of the below functions
	local opts = { noremap = true, silent = true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

	-- Set keybinds only for buffers with a language server attached
	local on_attach = function(client, bufnr)
		-- Enable completion triggered by <c-x><c-o>
		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
	end

	local capabilities = require('cmp_nvim_lsp').default_capabilities()

	-- add capability to language server
	require('lspconfig')['html'].setup {
		capabilities = capabilities,
		on_attach = on_attach
	}

	require('lspconfig')['tsserver'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['tailwindcss'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['astro'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['html'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['cssls'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['intelephense'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['grammarly'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	require('lspconfig')['lua_ls'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { 'vim' },
				},
			},
		}
	}
end

return M
