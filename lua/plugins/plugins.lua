local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify('packer installing...')
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local packer = require('packer')

packer.startup({
  function(use)
    -- packer
    use('wbthomason/packer.nvim')
    ----------------------------------------------
    -- tokyonight
    use('folke/tokyonight.nvim')
    -- onedark
    use('ful1e5/onedark.nvim')
    -- catppuccin
    use('catppuccin/nvim')
    -- nvim-tree
    use({'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'})
    -- bufferline
    use({'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'})
    -- lualine
    use({'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true}})
    ----------------------------------------------
    -- treesitter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    -- telescope
    use({'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }})
    -- lsp mason
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    -- lspconfig
    use('neovim/nvim-lspconfig')
    -- surround
    use({
      "ur4ltz/surround.nvim",
      config = function()
        require('surround').setup({mappings_style = "sandwich"})
      end
    })
    -- Comment
    use({"numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end
    })
    -- null-ls
    use({'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim'})
    -- copilot
    use('github/copilot.vim')

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      packer.sync()
    end
  end
})
