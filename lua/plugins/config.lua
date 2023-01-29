----- nvim-tree -----
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  git={
	  enable=false
  },
  view = {
    width = 30,
    side = 'right',
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = true,
    },
  },
})
vim.keymap.set("n", "<Leader>nn", ":NvimTreeToggle<CR>", {noremap=true,silent=true})

----- bufferline -----
require("bufferline").setup({
  options={
    close_command='bdelete %d',
    right_mouse_command='bdelete %d',
  },
})
vim.keymap.set("n", "<Leader>n", ":BufferLineCycleNext<CR>", {noremap=true,silent=true})
vim.keymap.set("n", "<Leader>tn", ":tabnew<CR>", {noremap=true,silent=true})
vim.keymap.set("n", "<Leader>tc", ":BufferLinePickClose<CR>", {noremap=true,silent=true})
vim.keymap.set("n", "<Leader>c", ":bdelete<CR>", {noremap=true,silent=true})

----- lualine -----
require('lualine').setup()

----- treesitter -----
require('nvim-treesitter.configs').setup({
  ensure_installed = { "json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx","go","rust","zig" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

----- mason -----
require("mason").setup()

----- telescope -----
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
