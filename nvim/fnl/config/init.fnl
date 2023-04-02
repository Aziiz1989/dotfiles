(module config.init
  {autoload {core aniseed.core
             nvim aniseed.nvim
             util config.util
             str aniseed.string
             clerk config.clerk}})


(set vim.g.copilot_node_command "~/.nvm/versions/node/v16.5.0/bin/node*")
(set nvim.g.mapleader ";")
(set nvim.g.maplocalleader ",")
(nvim.set_keymap :t :<esc><esc> "<c-\\><c-n>" {:noremap true})
(util.lnnoremap :. "ToggleTerm")
(vim.cmd "colorscheme github_light")
(util.lnnoremap :fd ":Telescope file_browser path=%:p:h select_buffer=true")
(util.lnnoremap :cs "w | ConjureEval (nextjournal.clerk/show! (str *file*))")

;;; copilot 

(set vim.g.copilot_no_tab_map false)
(set vim.g.copilot_assume_mapped  true)
(nvim.set_keymap :i :<C-a> "copilot#Accept()" {:silent true 
                                               :expr true
                                               :script true})

;; remapping copilot next and previous to C-j and C-k respectively 
(nvim.set_keymap :i :<C-j> "copilot#Next()" {:silent true 
                                             :expr true
                                             :script true})
(nvim.set_keymap :i :<C-k> "copilot#Previous()" {:silent true 
                                                  :expr true
                                                  :script true})

;; tes





;; --------------------
;; Filetype configuration

;; Set Conjure and other filetype line comments to ;;
(vim.api.nvim_create_autocmd
  :FileType
  {:group    (vim.api.nvim_create_augroup :commentary_config {:clear true})
   :pattern  [:lisp :clojure :racket :fennel]
   :callback (fn [] (set vim.opt_local.commentstring ";; %s") nil)})

;; set filetypes filename extensions for Clojure
;; autocmd BufNewFile,BufRead .edn,clj,.cljstyle set filetype=clojure
(nvim.ex.autocmd "BufNewFile,BufRead" ".edn,.clj,.cljstyle" "set filetype=clojure")

;; --------------------
;; Neovim - global editor options

;; refresh changed content
(nvim.ex.autocmd "FocusGained,BufEnter" "*" ":checktime")

;; Line settings - don't wrap lines
(nvim.ex.set :nowrap)

(let [options
      {
       :encoding "utf-8"
       :spelllang "en_gb" 
       ;; :backspace "2"
       ;; Visual column indicator
       ;; :colorcolumn "80"
       :errorbells false
       ;; :backup false
       ;; :swapfile false
       ;; :showmode false
       ;; show line numbers
       ;; :number true
       :relativenumber true
       ;show line and column number
       :ruler true
       ;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;turn on the wild menu, auto complete for commands in command line
       :wildmenu true
       :wildignore "*/tmp/*,*.so,*.swp,*.zip"
       ;case insensitive search
       :ignorecase true
       :autochdir true
       ;smart search case
       :smartcase true
       ;shared clipboard
       :clipboard "unnamedplus"
       ;show invisible characters
       :list false
       ;; :listchars (str.join "," ["tab:▶-" "trail:•" "extends:»" "precedes:«" "eol:¬"])
       ;tabs is space
       :expandtab true
       ;tab/indent size
       ;; :tabstop 2
       ;; :shiftwidth 2
       ;; :softtabstop 2
       ;persistent undo
       ;; :undofile true
       ;open new horizontal panes on down pane
       :splitbelow true
       ;open new vertical panes on right pane
       :splitright true
       ;enable highlighting search
       :hlsearch true
       ;; single column for signs(icons) and line numbers
       :signcolumn "number"}]
       ;; Width of gutter (number + sign columns)
       ;; :numberwidth 3  ;; relative numbers should only need 2 columns

       ;; syntax highlight code blocks in markdown
       ; :markdown_fenced_languages ["clojure" "html" "json" "css" "scss" "lua" "vim" "yaml"]
       
  (each [option value (pairs options)]
    (util.set-global-option option value)))


(require :config.plugin)
