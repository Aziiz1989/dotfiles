local _2afile_2a = "nvim/fnl/config/plugin.fnl"
local _2amodule_name_2a = "config.plugin"
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
local a, nvim, packer, util = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("packer"), autoload("config.util")
do end (_2amodule_locals_2a)["a"] = a
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["packer"] = packer
_2amodule_locals_2a["util"] = util
local function safe_require_plugin_config(name)
  local ok_3f, val_or_err = pcall(require, ("config.plugin." .. name))
  if not ok_3f then
    return print(("config error: " .. val_or_err))
  else
    return nil
  end
end
_2amodule_locals_2a["safe-require-plugin-config"] = safe_require_plugin_config
local function use(...)
  do
    local pkgs = {...}
    local function _2_(use0)
      for i = 1, a.count(pkgs), 2 do
        local name = pkgs[i]
        local opts = pkgs[(i + 1)]
        do
          local _3_ = opts.mod
          if (nil ~= _3_) then
            safe_require_plugin_config(_3_)
          else
          end
        end
        use0(a.assoc(opts, 1, name))
      end
      return nil
    end
    packer.startup(_2_)
  end
  return nil
end
_2amodule_locals_2a["use"] = use
use("wbthomason/packer.nvim", {}, "Olical/aniseed", {branch = "develop"}, "Olical/conjure", {}, "eraserhd/parinfer-rust", {}, "tpope/vim-sexp-mappings-for-regular-people", {requires = {"guns/vim-sexp", "tpope/vim-repeat", "tpope/vim-surround"}}, "HiPhish/nvim-ts-rainbow2", {}, "github/copilot.vim", {}, "folke/which-key.nvim", {mod = "which-key"}, "hrsh7th/nvim-cmp", {requires = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp", "PaterJason/cmp-conjure"}, mod = "cmp"}, "neovim/nvim-lspconfig", {branch = "master", mod = "lspconfig"}, "akinsho/toggleterm.nvim", {tag = "*", mod = "toggleterm"}, "chrisbra/Recover.vim", {}, "nvim-telescope/telescope.nvim", {requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim", "rcarriga/nvim-notify", "nvim-telescope/telescope-file-browser.nvim", "LinArcX/telescope-env.nvim", "crispgm/telescope-heading.nvim", "LinArcX/telescope-ports.nvim", "nvim-telescope/telescope-packer.nvim", "nvim-telescope/telescope-project.nvim", "TC72/telescope-tele-tabby.nvim", "ANGkeith/telescope-terraform-doc.nvim", "nvim-telescope/telescope-ui-select.nvim"}, mod = "telescope"}, "L3MON4D3/LuaSnip", {requires = {"saadparwaiz1/cmp_luasnip"}}, "startup-nvim/startup.nvim", {requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}}, "kyazdani42/nvim-web-devicons", {mod = "web-devicons"}, "yorik1984/newpaper.nvim", {}, "projekt0n/github-nvim-theme", {}, "nvim-lualine/lualine.nvim", {requires = {"kyazdani42/nvim-web-devicons"}}, "overcache/NeoSolarized", {}, "nacro90/numb.nvim", {mod = "numb"}, "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate", mod = "treesitter"}, "terrortylor/nvim-comment", {mod = "nvim-comment"})
return _2amodule_2a