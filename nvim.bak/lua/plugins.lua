local function get_config(name)
  return string.format('require("config/%s")', name)
end

 return require('packer').startup(function(use)
   -- Packer can manage itself
   use('wbthomason/packer.nvim')




   use {"nvim-lua/plenary.nvim"}

   use({
    "nvim-treesitter/nvim-treesitter",
   -- config = get_config("treesitter"),
    run = ":TSUpdate",
  })

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "f3fora/cmp-spell",
      "lukas-reineke/cmp-rg",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "ray-x/cmp-treesitter",
      "vappolinario/cmp-clippy"
--      "PaterJason/cmp-conjure"
    },
    config = get_config("cmp"),
  })

  use({ "neovim/nvim-lspconfig", config = get_config("lsp")})

  use({"tpope/vim-sexp-mappings-for-regular-people",
  	requires = {"guns/vim-sexp",
		   "tpope/vim-repeat",
	   	   "tpope/vim-surround"}})


use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

--use({'liquidz/vim-iced',
--	config =  get_config('vim-iced')})
use 'Olical/conjure'
use 'PaterJason/cmp-conjure'
use {'chrisbra/Recover.vim'}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  --config = require('lualine').setup()
}

use {'eraserhd/parinfer-rust'}

use {'liuchengxu/vim-clap'}

use({
	'mvllow/modes.nvim',
	tag = 'v0.2.0',
	config = get_config('modes') 
})

use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

--use({
--   "ellisonleao/glow.nvim",
--    config=require('glow').setup()}
--    )
use {'vim-denops/denops.vim'}
use {
  'skanehira/denops-docker.vim',
}

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use {
  'gorbit99/codewindow.nvim',
  config = function()
    local codewindow = require('codewindow')
    codewindow.setup()
    codewindow.apply_default_keybinds()
  end,
}
use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
use {'nyoom-engineering/oxocarbon.nvim'}
--use {"ggandor/leap.nvim",
--     config= require('leap').add_default_mappings()
--   }

  if packer_bootstrap then
	 require('packer').sync()
  end 


 end)
