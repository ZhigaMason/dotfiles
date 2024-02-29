  -- Carry regular vim configurations to neovim
vim.cmd('set runtimepath^=~/.vim runtimepath+=~/.vim/after')
vim.cmd('let &packpath=&runtimepath')
vim.cmd('source ~/.vimrc')
