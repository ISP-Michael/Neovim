local set = vim.keymap.set
set('n', '<C-s>', ':w<cr>')
set('n', '<C-q>', ':q<cr>')
set('n', '<Esc>', ':nohlsearch<cr>')
set('t', '<C-q>', '<C-\\><C-n>')
set(
  'n',
  '<leader>dq',
  function()
    require('dap').terminate()
    require('dapui').close()
  end
)

local buf = vim.lsp.buf
set('n', 'gd', buf.definition)
set('n', 'gD', buf.declaration)
set('n', 'K',  buf.hover)


