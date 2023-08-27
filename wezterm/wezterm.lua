local wez_config = require("baseconf")

-- {% if wsl %}
local wsl = require("wsl")
wsl.apply_to_config(wez_config)
-- {% endif %}

return wez_config
