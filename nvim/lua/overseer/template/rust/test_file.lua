local cfg = {
  name = 'Cargo Test File',
  builder = function(params)
    local fs = require 'utils.fs'
    local fn = fs.buffer_filename()
    fn = vim.fn.fnamemodify(fn, ':r')
    local module_path = string.format('%s::', fn)
    return {
      cmd = { 'cargo', 'test', module_path },
    }
  end,
  condition = {
    filetype = { 'rust' },
  },
}

return cfg