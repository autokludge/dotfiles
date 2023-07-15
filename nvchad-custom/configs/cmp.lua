local cmp = require("cmp")

local options = {
  sources = {
    { name = "crates", priority = 750 },
  },
  mapping = {
    ["<Tab>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
  }
}
return options
