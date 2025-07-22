return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup({
      style = 'cool',
      code_style = {
        strings   = 'none',
        keywords  = 'bold',
        comments  = 'none',
        functions = 'bold',
        variables = 'none'
      }
    })
    require('onedark').load()
  end
}
