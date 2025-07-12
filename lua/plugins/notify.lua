return {
  'rcarriga/nvim-notify',
  lazy = false,
  priority = 100,
  config = function()
    require('notify').setup()
  end
}
