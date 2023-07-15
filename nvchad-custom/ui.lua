---@type UIConfig 
local ui = {}

ui.theme = "radium"
ui.cmp = {
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
}
ui.hl_override = {
  Comment = {
    italic = true,
  }
}
ui.transparency = true
ui.nvdash = {
    load_on_startup = true,
}

return ui
