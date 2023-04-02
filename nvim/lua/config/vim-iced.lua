vim.g.iced_enable_default_key_mappings = true
vim.api.nvim_exec('let iced#buffer#stdout#mods = "rightbelow"', false)
--vim.g.iced.nrepl.skip_evaluation_when_buffer_size_is_exceeded = true

vim.api.nvim_exec('let iced#nrepl#skip_evaluation_when_buffer_size_is_exceeded = v:true', false)
--vim.api.nvim_exec('let iced#buffer#stdout#enable_notify = v:false', false)

vim.api.nvim_exec('let iced_enable_auto_indent = v:false', false)
