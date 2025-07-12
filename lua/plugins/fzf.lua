return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  keys = {
    { '<leader>f', ':lua require("fzf-lua").files()<CR>' }
  },
  opts = {}
}
