-- leader
vim.g.mapleader=','
vim.g.maplocalleader=','
vim.o.clipboard="unnamed,unnamedplus"
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
map('n','<Leader>a','ggVG<CR>',opt)
map('i','<C-h>','<ESC>I',opt)
map('i','<C-l>','<ESC>A',opt)
map('n','<Leader><CR>',':nohl<CR>',opt)
-- tabs
map('n','<S-h>',':bprevious<CR>',opt)
map('n','<S-l>',':bnext<CR>',opt)
map("n", "<Leader>tn", ":tabnew<CR>", opt)
map("n", "<Leader>c", ":bdelete!<CR>", opt)
map('n','<leader>1',  ':tabn1<cr>',opt)
map('n','<leader>2',  ':tabn2<cr>',opt)
map('n','<leader>3',  ':tabn3<cr>',opt)
map('n','<leader>4',  ':tabn4<cr>',opt)
map('n','<leader>5',  ':tabn5<cr>',opt)
map('n','<leader>6',  ':tabn6<cr>',opt)
map('n','<leader>7',  ':tabn7<cr>',opt)
map('n','<leader>8',  ':tabn8<cr>',opt)
map('n','<leader>9',  ':tabn9<cr>',opt)
-- file
map('n','<Leader>s',':w!<CR>',opt)


map('n', 'oo',  'o<Esc>', opt)
map('n','ii',  'i<CR><Esc>', opt)
map('n', '<space><space>',  'i<space><Esc>', opt)
