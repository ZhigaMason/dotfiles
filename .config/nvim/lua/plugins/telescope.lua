return { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        -- Telescope configs
        local builtin_telescope = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin_telescope.find_files, {})
    end
}
