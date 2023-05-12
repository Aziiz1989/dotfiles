(module config.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util config.util
             packer packer}})


(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))


(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name)))))))
  nil)

(use 
  
 ;; plugin Manager
 :wbthomason/packer.nvim {}

  ;; nvim config and plugins in Fennel
  :Olical/aniseed {:branch :develop}

  ;; repl clojure 
  :Olical/conjure {} 
  :eraserhd/parinfer-rust {}
  :tpope/vim-sexp-mappings-for-regular-people {:requires [:guns/vim-sexp 
                                                          :tpope/vim-repeat 
                                                          :tpope/vim-surround]}

  :HiPhish/nvim-ts-rainbow2 {}


  ;; git stuff 

  :tpope/vim-fugitive {}
  :APZelos/blamer.nvim {}
;; copilot 
  :github/copilot.vim {}
                       ;; :mod :copilot-cmp}
  ;; :zbirenbaum/copilot-cmp { 
  ;;                          :mod :copilot-cmp}
  ;;;; Menu system & Neovim control
  :folke/which-key.nvim {:mod :which-key}

  ;;autocomplete
 :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                               :hrsh7th/cmp-nvim-lsp
                               :PaterJason/cmp-conjure]
                    :mod :cmp}

  ;; add coq 
  ;; :ms-jpq/coq_nvim {:branch "coq"}
  ;;
  ;; :ms-jpq/coq.thirdparty {:branch "3p"}
  ;;
  ;; :ms-jpq/coq.artifacts {:branch "artifacts"}

  ;; lsp server
 :neovim/nvim-lspconfig {:branch "master"
                         :mod :lspconfig}
 
 ;; terminal stuff
 :akinsho/toggleterm.nvim {:tag "*"
                           :mod :toggleterm}

 
  :chrisbra/Recover.vim {}
  :nvim-telescope/telescope.nvim
  {:requires [:nvim-lua/popup.nvim
              :nvim-lua/plenary.nvim
              :rcarriga/nvim-notify  ;; ports extension

              ;; Extensions
              :nvim-telescope/telescope-file-browser.nvim
              :LinArcX/telescope-env.nvim
              :crispgm/telescope-heading.nvim
              :LinArcX/telescope-ports.nvim
              :nvim-telescope/telescope-packer.nvim
              :nvim-telescope/telescope-project.nvim
              :TC72/telescope-tele-tabby.nvim
              :ANGkeith/telescope-terraform-doc.nvim
              :nvim-telescope/telescope-ui-select.nvim]
   :mod :telescope}

 :L3MON4D3/LuaSnip {:requires [:saadparwaiz1/cmp_luasnip]}

   ;;themes 
  :startup-nvim/startup.nvim
  {:requires [:nvim-telescope/telescope.nvim
              :nvim-lua/plenary.nvim]}

  :kyazdani42/nvim-web-devicons {:mod :web-devicons}
  :yorik1984/newpaper.nvim {} 
  :projekt0n/github-nvim-theme {} 

 :nvim-lualine/lualine.nvim
 {:requires [:kyazdani42/nvim-web-devicons]}
 
 :overcache/NeoSolarized {}
 ;;add nightfox colorscheme 
 :EdenEast/nightfox.nvim {}

 ;; :Iron-E/nvim-highlite {:branch "master-v3"}
 ;; :Th3Whit3Wolf/one-nvim {}

 ;;;;;;;;;;;;
 :nacro90/numb.nvim {:mod :numb}

 :nvim-treesitter/nvim-treesitter
  {:run ":TSUpdate"
   :mod :treesitter}
  
  :terrortylor/nvim-comment {:mod :nvim-comment})
 

  
  


 


  

 


  


