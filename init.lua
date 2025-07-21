local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.loader.enable()
require('core.options')
require('core.indent')
require('core.keymap')
require('core.diagnostic')
require('lazy').setup('plugins', {
  performance = {
    enabled = true,
    path = vim.fn.stdpath('cache') .. '/lazy/cache',
    reset_on_startup = 'always'
  },
  reset_packpath = true,
  rtp = {
    reset = false
  }
})
require('core.O_o')
require('core.py')

