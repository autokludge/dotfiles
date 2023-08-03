local wezterm = require("wezterm")
local c = wezterm.config_builder()

c.initial_rows = 40
c.initial_cols = 140

c.color_scheme = "Radium (base46)"
c.hide_tab_bar_if_only_one_tab = true
c.window_background_opacity = 0.90

c.font = wezterm.font_with_fallback({
	"CaskaydiaCove Nerd Font",
	"Noto Color Emoji",
	"JetBrains Mono",
})
c.font_size = 10.0

local wsl = require("wsl")
wsl.apply_to_config(c)

return c
