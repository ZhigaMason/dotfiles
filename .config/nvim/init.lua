-- Carry regular vim configurations to neovim
vim.cmd('set runtimepath^=~/.vim runtimepath+=~/.vim/after')
vim.cmd('let &packpath=&runtimepath')
vim.cmd('source ~/.vimrc')

-- Set key-map 'mapleader' to a space
vim.g.mapleader = " "

-- Install vim
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

-- Lazy install plugins and options
local plugins = {
    { "sainnhe/sonokai", name = "sonokai",priority = 1000},    
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Use colorscheme from lua/colorscheme.lua
require("colorscheme")

-- Telescope configs
local builtin_telescope = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin_telescope.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin_telescope.live_grep, {})

-- treesitter configs
local treesitter_config = require("nvim-treesitter.configs")
treesitter_config.setup({
    ensure_installed = {"lua", "cpp", "c", "python", "bash", "html"},
    sync_install = false,
    highlight = {enable = true},
    indent = {enable = true}
})
