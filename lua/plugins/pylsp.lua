return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- Enable mypy
                pylsp_mypy = {
                  enabled = true,
                  live_mode = false, -- disable live mode for better performance
                  dmypy = true,     -- optional: use mypy daemon or not
                },
                -- Optionally disable other linters to avoid overlap
                pycodestyle = { enabled = false },
                mccabe = { enabled = false },
                pyflakes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
}
