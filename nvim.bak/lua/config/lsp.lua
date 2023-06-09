local nvim_lsp = require("lspconfig")


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
-- enable folding capabilities for nvim-ufo
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

nvim_lsp.clojure_lsp.setup{capabilities = capabilities}

config = function()
	require("lint").linters_by_ft = {
	clojure = {"clj-kondo"},
      -- ... other linters
    }
end

nvim_lsp.pyright.setup{}
