local opts = { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  version = 'v2.1.0',
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = '[C]laude', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>l'] = { name = '[L]sp', _ = 'which_key_ignore' },
      ['<leader>lw'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>lh'] = { name = '[H]ierarchy', _ = 'which_key_ignore' },
      ['<leader>le'] = { name = '[E]lixir', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]iagnostics', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]elect', _ = 'which_key_ignore', mode = { 'v' } },
      ['<leader>n'] = { name = '[N]otification', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]sync', _ = 'which_key_ignore' },
      ['<leader>ru'] = { name = '[U]pload', _ = 'which_key_ignore' },
      ['<leader>rd'] = { name = '[D]ownload', _ = 'which_key_ignore' },
      ['<leader>rc'] = { name = '[C]onfig', _ = 'which_key_ignore' },
      ['<leader>sm'] = { name = '[M]ulti-cursor', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>sq'] = { name = '[Q]uickfix', _ = 'which_key_ignore' },
      ['<leader>st'] = { name = '[T]odo', _ = 'which_key_ignore' },
      ['<leader>sc'] = { name = '[C]ommands', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>ws'] = { name = '[s]ession', _ = 'which_key_ignore' },
      ['<leader>wm'] = { name = '[m]anagement', _ = 'which_key_ignore' },
      ['<leader>wms'] = { name = '[s]plit', _ = 'which_key_ignore' },
      ['<leader>q'] = { name = 'quickfix / trouble / location list', _ = 'which_key_ignore' },
      ['<leader>qt'] = { name = 'trouble', _ = 'which_key_ignore' },
      ['<leader>ql'] = { name = 'location list', _ = 'which_key_ignore' },
      ['<leader>qT'] = { name = 'Todo', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Grapple', _ = 'which_key_ignore' },
      ['<leader>m'] = { name = '[m]ini.nvim', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>ms'] = { name = '[M]ini [S]urround', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>gt'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]est', _ = 'which_key_ignore' },
      ['<leader>p'] = { name = 'Command [P]alette', _ = 'which_key_ignore' },
      ['<leader>td'] = { name = '[D]ebug test', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[F]ile', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>b6'] = { name = '[B]ase64', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>ba'] = { name = '[a]ll [b]uffers', _ = 'which_key_ignore' },
      ['<leader>by'] = { name = '[y]ank', _ = 'which_key_ignore' },
      ['<leader>v'] = { name = '[v]isual motions', _ = 'which_key_ignore', mode = { 'n', 'v' } },
      ['<leader>vt'] = { name = '[t]reesitter', _ = 'which_key_ignore' },
    }
  end,
}

return opts
