---@type ChadrcConfig 
local M = {}

M.crates = {
  n = {
    ["<leader>cru"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "[CRate] Upgrade all crates",
    },
    ["<leader>crv"] = {
      function ()
        require('crates').show_versions_popup()
      end,
      "[CRate] show crate Versions,"
    },
  }
}

return M
