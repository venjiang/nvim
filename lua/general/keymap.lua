-- leader
vim.g.mapleader=','
vim.g.maplocalleader=','
local map=vim.keymap.set
local opt={noremap=true,silent=true}
-- windows
map('n','<C-h>','<C-w>h',opt)
map('n','<C-j>','<C-w>j',opt)
map('n','<C-k>','<C-w>k',opt)
map('n','<C-l>','<C-w>l',opt)
-- blocks
--map('v','<','<gv',opt)
--map('v','>','>gv',opt)
--map('v','J',':move ">+1<CR>gv-gv"',opt)
--map('v','K',':move "<-2<CR>gv-gv"',opt)
--map('n','<C-j>','4j',opt)
--map('n','<C-k>','4k',opt)
map('i','<C-h>','<ESC>I',opt)
map('i','<C-l>','<ESC>A',opt)
map('n','<Leader><CR>',':nohl<CR>',opt)
-- tabs
map('n','<S-h>',':bprevious<CR>',opt)
map('n','<S-l>',':bnext<CR>',opt)
map("n", "<Leader>tn", ":tabnew<CR>", opt)
map("n", "<Leader>c", ":bdelete!<CR>", opt)
-- file
map('n','<Leader>s',':w<CR>',opt)

