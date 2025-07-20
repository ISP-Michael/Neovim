return {
  'nvim-pack/nvim-spectre',
  keys = {
    { '<leader>s', ':lua require("spectre").toggle()<cr>' }
  },
  config = function()
    require('spectre').setup()
  end
}
