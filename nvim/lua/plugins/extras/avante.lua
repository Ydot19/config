local opts = {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  commit = 'daa0624e508e7e61ad80dc1f80fd705a6e141359', -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = 'claude',
    claude = {
      endpoint = 'https://api.anthropic.com',
      model = 'claude-3-7-sonnet-20250219',
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      max_tokens = 64000,
    },
    gemini = {
      endpoint = 'https://generativelanguage.googleapis.com/v1beta/models',
      model = 'gemini-2.5-pro-preview-03-25',
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      max_tokens = 64000,
    },
    behaviour = {
      use_cwd_as_project_root = true,
    },
    mappings = {
      ask = '<leader>caa',
      edit = '<leader>cae',
      refresh = '<leader>car',
      focus = '<leader>caf',
      stop = '<leader>caS',
      toggle = {
        default = '<leader>cat',
        debug = '<leader>cad',
        hint = '<leader>cah',
        suggestion = '<leader>cas',
        repomap = '<leader>caR',
      },
      files = {
        add_current = '<leader>cac', -- Add current buffer to selected files
        add_all_buffers = '<leader>caB', -- Add all buffer files to selected files
      },
      select_model = '<leader>ca?', -- Select model command
      select_history = '<leader>cah', -- Select history command
    },
    selector = {
      provider = 'telescope',
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'echasnovski/mini.pick', -- for file_selector provider mini.pick
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
    'ibhagwan/fzf-lua', -- for file_selector provider fzf
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
        log_level = 'debug',
        overrides = {
          buftype = {
            nofile = {
              render_modes = { 'n', 'c', 'i' },
              debounce = 5,
            },
          },
          filetype = {},
        },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}

return opts
