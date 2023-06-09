local _2afile_2a = ".config/nvim/fnl/config/clerk.fnl"
local _2amodule_name_2a = "config.clerk"
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
local core, nvim = autoload("aniseed.core"), autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["nvim"] = nvim
local function ClerkShow()
  vim.command("w")
  return vim.command(("ConjureEval (nextjournal.clerk/show! \"" .. vim.fn.expand("%:p") .. "\")"))
end
return _2amodule_2a