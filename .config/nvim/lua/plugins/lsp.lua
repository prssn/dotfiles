return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      vtsls = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end, -- Disables all diagnostics
        },
      },
      tsserver = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end, -- Disables all diagnostics
        },
      },
    },
  },
}
