return {
  'echasnovski/mini.align',
  version = '*',
  lazy = false,
  priority = 50,
  config = function()
    require('mini.align').setup()
  end
}
