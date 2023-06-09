local _2afile_2a = "nvim/fnl/config/plugin/copilot-cmp.fnl"
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
local copilot = autoload("copilot_vim")
do end (_2amodule_locals_2a)["copilot"] = copilot
copilot.setup({})
return _2amodule_2a