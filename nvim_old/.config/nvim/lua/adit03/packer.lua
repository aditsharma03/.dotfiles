local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use {
	  'daltonmenezes/aura-theme',
	  rtp = 'packages/neovim'
--	  config = function()
--		  vim.cmd("colorscheme aura-dark-soft-text") -- Or any Aura theme available
--	  end
  }



  use "rebelot/kanagawa.nvim"



  use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use( 'nvim-treesitter/playground')


  use( 'mbbill/undotree' )



  use( 'tpope/vim-fugitive' )



  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment the two plugins below if you want to manage the language servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }



 -- use( 'jiangmiao/auto-pairs')
 

 use{
     'altermo/ultimate-autopair.nvim',
     event={'InsertEnter','CmdlineEnter'},
     branch='v0.6', --recommended as each new version will have breaking changes
     config=function ()
         require('ultimate-autopair').setup({
             --Config goes here
         })
     end,
 }



                               use( 'GustavoPrietoP/doom-themes.nvim' )



  use ( 'andweeb/presence.nvim' )



  use {
      'olivercederborg/poimandres.nvim',
      config = function()
          require('poimandres').setup {
              -- leave this setup function empty for default config
              -- or refer to the configuration section
              -- for configuration options
          }
      end
  }


  use ( 'ThePrimeagen/vim-be-good' )



  --  use ( 'preservim/nerdtree' )

  use  {
      'nvim-tree/nvim-tree.lua',
      requires = {
          {"nvim-tree/nvim-web-devicons"}
      }
  }




  -- tailwind-tools.lua
  use {
      "luckasRanarison/tailwind-tools.nvim",
      requires = { {"nvim-treesitter/nvim-treesitter"} },
  }



  use 'norcalli/nvim-colorizer.lua'



  use 'windwp/nvim-ts-autotag'





















  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
