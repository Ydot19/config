local opts = {
  'mrded/nvim-lsp-notify',
  dependencies = { 'rcarriga/nvim-notify' },
  config = function()
    require('lsp-notify').setup {}
  end,
}

return opts
