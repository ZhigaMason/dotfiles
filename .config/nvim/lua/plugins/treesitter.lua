return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", 
    config = function()
        -- treesitter configs
        local treesitter_config = require("nvim-treesitter.configs")
        treesitter_config.setup({
            ensure_installed = {"lua", "cpp", "c", "python", "bash", "html"},
            sync_install = false,
            highlight = {enable = true},
            indent = {enable = true}
        })
    end
}
