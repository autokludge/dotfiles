return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "catppuccin",
      options = {
        component_seperators = " ",
        section_separators = { left = "", right = "" },
      },
      extensions = { "quickfix" },
    },
  },
}
