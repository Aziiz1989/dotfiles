local _2afile_2a = ".config/nvim/fnl/config/copilot-cmp.fnl"
local _2amodule_name_2a = "config.plugin.copilot-cmp"
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
local copilot, copilot_cmp = autoload("copilot.vim"), autoload("copilot_cmp")
do end (_2amodule_locals_2a)["copilot"] = copilot
_2amodule_locals_2a["copilot-cmp"] = copilot_cmp
copilot.setup({suggestion = {enabled = false}, panel = {enabled = false}})
copilot_cmp.setup({})
return _2amodule_2a