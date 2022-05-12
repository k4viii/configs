return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 --use 'navarasu/onedark.nvim'
--  use 'rafamadriz/neon'
--use 'tiagovla/tokyodark.nvim'
use 'ghifarit53/tokyonight-vim'
use {
  'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
use {'windwp/nvim-ts-autotag'}
use {'p00f/nvim-ts-rainbow'}
use {'windwp/nvim-autopairs'}
use {'folke/which-key.nvim'}
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'hrsh7th/cmp-vsnip'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/vim-vsnip'
use 'onsails/lspkind-nvim'
use 'norcalli/nvim-colorizer.lua'
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup{current_line_blame = true}
    end
}
use 'glepnir/dashboard-nvim'
use "lukas-reineke/indent-blankline.nvim"
use "akinsho/toggleterm.nvim"
use 'terrortylor/nvim-comment'
use 'williamboman/nvim-lsp-installer'
use 'jose-elias-alvarez/null-ls.nvim'
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
    }
  end
}
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
    }
  end
}


end)

