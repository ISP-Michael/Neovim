return {
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup({
        style = 'darker',
        code_style = {
          strings = 'none',
          keywords = 'bold,italic',
          comments = 'italic',
          functions = 'bold',
          variables = 'none'
        }
      })
      require('onedark').load()
    end
  },
}
