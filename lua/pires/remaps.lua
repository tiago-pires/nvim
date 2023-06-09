vim.g.mapleader = " "

-- ## save
vim.keymap.set("n", "<c-s>", ":update<cr>")

vim.keymap.set("n", "<leader><cr>", "<cmd>setlocal wrap linebreak<cr>")
vim.keymap.set("n", "<leader>n<cr>", "<cmd>setlocal wrap! linebreak<cr>")

-- ## Move buffers, use arrows as <c-h> in term is delete
vim.keymap.set("n", "<left>", "<c-w>h")
vim.keymap.set("n", "<right>", "<c-w>l")
vim.keymap.set("n", "<down>", "<c-w>j")
vim.keymap.set("n", "<up>", "<c-w>k")

-- ### Terminal buffers
vim.keymap.set("t", "<c-left>", "<c-\\><c-n><c-w>h")
vim.keymap.set("t", "<c-right>", "<c-\\><c-n><c-w>l")
vim.keymap.set("t", "<c-down>", "<c-\\><c-n><c-w>j")
vim.keymap.set("t", "<c-up>", "<c-\\><c-n><c-w>k")

-- ## run code
vim.keymap.set('v', "vmap <leader>rn", ":'<,'>w !node<cr>")
vim.keymap.set('v', "vmap <leader>rp", ":'<,'>w !php<cr>")

-- ## Indent selection
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- ## Move lines
vim.keymap.set("v", "<down>", ":m .+1<cr>==V")
vim.keymap.set("v", "<up>", ":m .-2<cr>==V")

-- ## Fugitive
vim.keymap.set('n', '<leader>gs', ':G<CR><c-w>o')

-- ## Vim-ai
vim.keymap.set('n', '<leader>as', ':AIEdit fix grammar and spelling<cr>')
vim.keymap.set('n', '<leader>ac', ':AIChat<cr>')
vim.keymap.set('v', '<leader>as', ':AIEdit fix grammar and spelling<cr>')

-- ## Create Notes in Obsidean
 
vim.keymap.set('n','<leader>nt',':e ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Thoughts/')
vim.keymap.set('n','<leader>nc',':e ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Coding/')


