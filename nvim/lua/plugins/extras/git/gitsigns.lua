local opts = {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require 'gitsigns'
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then
          vim.cmd.normal { ']c', bang = true }
        else
          gitsigns.nav_hunk 'next'
        end
      end, { desc = 'Jump to next git [c]hange' })

      map('n', '[c', function()
        if vim.wo.diff then
          vim.cmd.normal { '[c', bang = true }
        else
          gitsigns.nav_hunk 'prev'
        end
      end, { desc = 'Jump to previous git [c]hange' })

      -- Actions
      -- visual mode
      map('v', '<leader>ls', function()
        gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'stage git hunk' })
      map('v', '<leader>lr', function()
        gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'reset git hunk' })
      -- normal mode
      map('n', '<leader>gs', gitsigns.stage_hunk, { desc = 'git [s]tage hunk' })
      map('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })
      map('n', '<leader>gS', gitsigns.stage_buffer, { desc = 'git [S]tage buffer' })
      map('n', '<leader>gu', gitsigns.undo_stage_hunk, { desc = 'git [u]ndo stage hunk' })
      map('n', '<leader>gR', gitsigns.reset_buffer, { desc = 'git [R]eset buffer' })
      map('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'git [p]review hunk' })
      map('n', '<leader>gb', function()
        gitsigns.blame_line { full = true }
      end, { desc = 'git [b]lame line' })
      map('n', '<leader>gd', gitsigns.diffthis, { desc = 'git [d]iff against index' })
      map('n', '<leader>gD', function()
        gitsigns.diffthis '@'
      end, { desc = 'git [D]iff against last commit' })

      map('n', '<leader>gq', function()
        gitsigns.setqflist 'all'
      end, { desc = 'show all hunks in [Q]uickfix list' })
      -- Toggles
      map('n', '<leader>gtb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
      map('n', '<leader>gtD', gitsigns.toggle_deleted, { desc = '[T]oggle git show [D]eleted' })
    end,
  },
}

return opts
