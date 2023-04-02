local _2afile_2a = "nvim/fnl/config/init.fnl"
local _2amodule_name_2a = "config.init"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local clerk, core, nvim, str, util = autoload("config.clerk"), autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("aniseed.string"), autoload("config.util")
do end (_2amodule_locals_2a)["clerk"] = clerk
_2amodule_locals_2a["core"] = core
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["str"] = str
_2amodule_locals_2a["util"] = util
vim.g.copilot_node_command = "~/.nvm/versions/node/v16.5.0/bin/node*"
nvim.g.mapleader = ";"
nvim.g.maplocalleader = ","
nvim.set_keymap("t", "<esc><esc>", "<c-\\><c-n>", {noremap = true})
util.lnnoremap(".", "ToggleTerm")
vim.cmd("colorscheme github_light")
util.lnnoremap("fd", ":Telescope file_browser path=%:p:h select_buffer=true")
util.lnnoremap("cs", "w | ConjureEval (nextjournal.clerk/show! (str *file*))")
vim.g.copilot_no_tab_map = false
vim.g.copilot_assume_mapped = true
nvim.set_keymap("i", "<C-a>", "copilot#Accept()", {silent = true, expr = true, script = true})
nvim.set_keymap("i", "<C-j>", "copilot#Next()", {silent = true, expr = true, script = true})
nvim.set_keymap("i", "<C-k>", "copilot#Previous()", {silent = true, expr = true, script = true})
local function _1_()
  vim.opt_local.commentstring = ";; %s"
  return nil
end
vim.api.nvim_create_autocmd("FileType", {group = vim.api.nvim_create_augroup("commentary_config", {clear = true}), pattern = {"lisp", "clojure", "racket", "fennel"}, callback = _1_})
nvim.ex.autocmd("BufNewFile,BufRead", ".edn,.clj,.cljstyle", "set filetype=clojure")
nvim.ex.autocmd("FocusGained,BufEnter", "*", ":checktime")
nvim.ex.set("nowrap")
do
  local options = {encoding = "utf-8", spelllang = "en_gb", relativenumber = true, ruler = true, completeopt = "menuone,noselect", wildmenu = true, wildignore = "*/tmp/*,*.so,*.swp,*.zip", ignorecase = true, autochdir = true, smartcase = true, clipboard = "unnamedplus", expandtab = true, splitbelow = true, splitright = true, hlsearch = true, signcolumn = "number", errorbells = false, list = false}
  for option, value in pairs(options) do
    util["set-global-option"](option, value)
  end
end
require("config.plugin")
return _2amodule_2a