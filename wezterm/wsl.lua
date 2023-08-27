local wezterm = require("wezterm")

-- Module to export
local module = {}

local config = wezterm.config_builder()
function module.apply_to_config(config)
	local wsl_domains = wezterm.default_wsl_domains()

	---@diagnostic disable-next-line: unused-local
	for idx, dom in ipairs(wsl_domains) do
		if dom.name == "WSL:Ubuntu-20.04" then
			dom.default_prog = { "zsh" }
		end
	end

	-- WSL zsh
	config.default_domain = "WSL:Ubuntu-20.04"
	config.default_prog = { "zsh", "--login", "-i" }

	config.skip_close_confirmation_for_processes_named = {
		"bash",
		"tmux",
		"zsh",
	}
	config.window_close_confirmation = "NeverPrompt"
	config.wsl_domains = wsl_domains
end

return module
