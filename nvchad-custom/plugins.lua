local plugins = {
  {
    "elkowar/yuck.vim",
    ft = "yuck"
  },
  {
    "psliwka/termcolors.nvim",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "Saecki/crates.nvim",
    -- ft = {"rust", "toml"},
    event = { "BufRead Cargo.toml" },
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('crates').setup()
    end,
    -- config = function(_, opts)
    --   local crates = require('crates')
    --   crates.setup(opts)
    --   crates.show()
    -- end,
  },
  { -- extend autocomplete
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        config = true,
      },
    },
    opts = function()
      require "plugins.configs.cmp"
      require "custom.configs.cmp"
    end,
    --@param opts cmp.ConfigSchema
    -- opts = function(_, opts)
      -- base
      -- local cmp = require("cmp")
      -- get overrides
      -- local oride = require("custom.configs.cmp")

      -- opts.sources = cmp.configs.sources(vim.list_extend(opts.sources, {
        -- { name = "crates", priority = 750 },
      -- }))
      --maybe???

      -- print(vim.inspect(opts.mapping)
      -- opts.mapping = vim.tbl_deep_extend("force", opts.mapping, oride.mapping)

    -- end,

    -- *** TODO:: extend config with custom mapping *** --
    -- opts = function()
      -- return require "plugins.configs.cmp"
    -- end,

  },
}
return plugins
