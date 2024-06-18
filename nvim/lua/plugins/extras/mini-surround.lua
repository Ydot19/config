local opts = {
    'echasnovski/mini.surround',
    opts = {},
    version = '*',
    config = function()
        require("mini.surround").setup({
            mappings = {
                add = '<leader>msa',        -- Add mini surrounding in Normal / Visual
                delete = '<leader>msd',     -- Delete mini surrounding in Normal / Visual
                find = '<leader>msf',       -- Find mini surrounding to the right in Normal / Visual
                find_left = '<leader>msF',  -- Find mini surrounding to the left in Normal / Visual
                highlight = '<leader>msh',  -- Highlight mini surrounding in Normal / Visual
                replace = '<leader>msr',    -- replace surrounding
                update_n_lines = '<leader>msn', -- Update surrounding for N lines
            }
        })
    end
}

return opts
