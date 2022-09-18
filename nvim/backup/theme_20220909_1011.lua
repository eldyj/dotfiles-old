vim.cmd[[colorscheme nord]]
require('lualine').setup {
  options = {
    theme = 'nord',
    section_separators = {
      left = '',
      right = ''
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {{'filename', file_status = false}},
    lualine_c = {'encoding'},
    lualine_x = {'progress'},
    lualine_z = {'fileformat'},
    lualine_y = {{'filetype', icon_only = true}}
  }
}
