local cmp = require'cmp'

  cmp.setup({
   
      experimental = {
        ghost_text = true
    },
      -- { name = 'luasnip' }, -- For luasnip users.
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },-- For vsnip user.
      { name = 'conjure'},
      { name = 'spell', 
	options = {
		keep_all_entries = false,
                enable_in_context = function()
                      return require('cmp.config.context').in_treesitter_capture('spell')
                               end
		}},
   --   { name = 'treesitter' },
   --   { name = 'cmp-clippy',
   --     options = {
   --       model = "EleutherAI/gpt-neo-125M", -- check code clippy vscode repo for options
   --       key = "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", -- huggingface.co api key
   --   }
   -- },
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
      { name = 'buffer' },
    })
  })

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require'lspconfig'.clojure_lsp.setup {
  capabilities = capabilities,
}
