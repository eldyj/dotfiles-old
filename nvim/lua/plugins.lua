require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'
  -- languages support
  use 'kchmck/vim-coffee-script'
  use 'digitaltoad/vim-pug'
  use 'isruslan/vim-es6'
  use 'elzr/vim-json'
  use 'stephpy/vim-yaml'
  use 'vim-jp/vim-cpp'
  use 'maxmellon/vim-jsx-pretty'
  -- utilites
  use 'mattn/emmet-vim'
  use 'chrisbra/vim-autosave'
  use 'alvan/vim-closetag'
  use 'Stoozy/vimcord'
  use 'tpope/vim-commentary'
  use 'ap/vim-css-color'
  use 'vim-syntastic/syntastic'
  -- theme & statusbar
  use 'xiyaowong/nvim-transparent'
  use 'shaunsingh/nord.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }
  end
)
