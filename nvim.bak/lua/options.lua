local o = vim.opt

o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
o.clipboard = "unnamed" -- allows neovim to access the system clipboard

o.number = true
o.relativenumber = true

o.smartindent = true -- make indenting smarter again
o.termguicolors = true -- set term gui colors (most terminals support this)
o.ignorecase = true -- ignore case in search patterns
o.completeopt = { "menu", "menuone", "noselect", "noinsert", "preview" } -- A comma separated list of options for Insert mode completion
o.wildignorecase = true -- When set case is ignored when completing file names and directories

vim.cmd("colorscheme oxocarbon")
o.autochdir = true

o.wildignorecase = true -- When set case is ignored when completing file names and directories
vim.diagnostic.config({virtual_text = false})

vim.diagnostic.open_float()
