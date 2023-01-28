pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
local packer=require('packer')

packer.startup({
  function(use)
    -- colorscheme
    -- tokyonight
    use('folke/tokyonight.nvim')
    -- onedark
    use('ful1e5/onedark.nvim')
    -- catppuccin
    use('catppuccin/nvim')
    -- nvim-tree
    use({'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
  end
})
