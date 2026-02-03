" ~/.config/nvim/colors/flatwhite.vim
if exists('g:colors_name')
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'flatwhite'

lua require('flatwhite').setup()
