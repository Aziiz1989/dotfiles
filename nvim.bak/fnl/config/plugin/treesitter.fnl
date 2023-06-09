(module config.plugin.treesitter
  {autoload {treesitter nvim-treesitter.configs
             ts-rainbow ts-rainbow}})

(treesitter.setup
  {:ensure_installed ["clojure" "fennel" "markdown" "org"]
   :sync_install true
   :highlight {:enable true}
   :indent    {:enable true}
   :rainbow {:enable true 
             :query "rainbow-parens"
             :strategy ts-rainbow.strategy.global}})
             
             
             
