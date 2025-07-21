return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  priority = 1000,
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects'
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'bash',
        'c',
        'c_sharp',
        'cpp',
        'css',
        'd',
        'dart',
        'desktop',
        'dockerfile',
        'dot',
        'elixir',
        'erlang',
        'fish',
        'gdscript',
        'git_config',
        'gitignore',
        'go',
        'gomod',
        'html',
        'http',
        'hyprlang',
        'ini',
        'java',
        'javascript',
        'jsdoc',
        'json',
        'kotlin',
        'lua',
        'markdown',
        'nginx',
        'nix',
        'nu',
        'php',
        'python',
        'rasi',
        'rust',
        'scss',
        'sql',
        'ssh_config',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vue',
        'xml',
        'yaml',
        'yuck',
        'qmljs'
      },
      highlight = { enable = true },
      indent    = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lockahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner'
          },
          selection_modes = {
            ['@parameter.outer'] = 'v',
            ['@function.outer'] = 'V',
            ['@class.outer'] = '<C-v>'
          }
        }
      }
    })
  end
}
