local wezterm = require("wezterm")
local c = wezterm.config_builder()

c.initial_rows = 50
c.initial_cols = 200

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

c.color_schemes = {
	["OLEDppuccin"] = custom,
}
c.color_scheme = "OLEDppuccin"

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
