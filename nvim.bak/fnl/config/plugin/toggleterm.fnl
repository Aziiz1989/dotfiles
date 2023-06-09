(module config.plugin.toggleterm
  {autoload {toggleterm toggleterm}})


(toggleterm.setup
 {:shade_terminals true
  :shading_factor 5
  :autochdir true})
