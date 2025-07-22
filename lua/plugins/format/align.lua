return {
  'junegunn/vim-easy-align',
  event = 'VeryLazy',
  config = function()
    local set = vim.keymap.set
    set('x', 'ga', '<Plug>(EasyAlign)')
    set('v', 'ga', '<Plug>(EasyAlign)')
  end
}
