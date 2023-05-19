-- install lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy require leader to be set befor setup of plugins
vim.g.mapleader = ' '
vim.gmaplocalleader = ' '

-- load from `lua/plugins/init.lua`
require("lazy").setup('plugins', {
	performance = {
		rtp = {
			disabled_plugins = {
			--	"matchit",
			--	"matchparen",
			"copilot"
			}
		}
	}
})
