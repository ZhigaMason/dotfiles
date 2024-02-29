-- Set the colorscheme to sonokai using a protected call
-- in case it isn't installed
vim.cmd("let g:sonokai_style = 'andromeda'")
vim.cmd("let g:sonokai_better_performance = 1")
local status, _ = pcall(vim.cmd, "colorscheme sonokai")
if not status then
    -- Print an error message if the colorscheme is not installed
    print("Colorscheme not found!") 
    return
end
