local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Radium (base46)"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.90

config.font = wezterm.font_with_fallback {
  'CaskaydiaCove Nerd Font', 'Noto Color Emoji'
}

return config
