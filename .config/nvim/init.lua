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

require("lazy").setup("plugins")

-- Use colorscheme from lua/colorscheme.lua
require("colorscheme")


