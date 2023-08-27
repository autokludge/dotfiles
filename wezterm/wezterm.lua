local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_rows = 50
config.initial_cols = 200

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

config.color_schemes = {
	["OLEDppuccin"] = custom,
}
config.color_scheme = "OLEDppuccin"

config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.90

config.font = wezterm.font_with_fallback({
	"CaskaydiaCove Nerd Font",
	"Noto Color Emoji",
})
config.font_size = 10.0

return config
