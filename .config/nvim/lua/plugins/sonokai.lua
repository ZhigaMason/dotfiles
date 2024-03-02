return  { 
    "sainnhe/sonokai", name = "sonokai",priority = 1000,
    config = function()
        -- Set the colorscheme to sonokai using a protected call
        -- in case it isn't installed
        vim.g.sonokai_style = 'shusia'
        vim.g.sonokai_better_performance = 1
        local status, _ = pcall(vim.cmd, "colorscheme sonokai")
        if not status then
            -- Print an error message if the colorscheme is not installed
            print("Colorscheme not found!") 
            return
        end
    end
}
