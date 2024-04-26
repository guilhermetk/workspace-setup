return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        -- formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.beautysh,
        -- diagnostics
        -- null_ls.builtins.diagnostics.golangci_lint,
        -- null_ls.builtins.diagnostics.eslint,
        -- code actions
        -- null_ls.builtins.code_actions.eslint,
      },
    }
  end,
}
