vim.api.nvim_create_autocmd({'FileType'}, {
  pattern = {
    'c',
    'cp',
    'cpp',
    'cs',
    'css',
    'sh',
    'dart',
    'html',
    'hyprlang',
    'json',
    'jsonc',
    'lua',
    'nix',
    'markdown',
    'scss',
    'vim',
    'qml'
  },
  callback = function()
    vim.opt_local.tabstop     = 2
    vim.opt_local.shiftwidth  = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab   = true
  end
})

