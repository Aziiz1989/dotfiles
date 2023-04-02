local map = vim.keymap.set
local o = vim.opt

-- map leader to  Space
--map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = ";"

-- map localleader to ,
vim.g.maplocalleader = ","

-- cycle through buffers using TAB
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprev<CR>")

-- escape highlted text using ESC
map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

map("i", "<C-e>", "<ESC>A")
map("i", "<C-a>", "<ESC>0i")


local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<localleader>d', vim.diagnostic.open_float, opts) 
