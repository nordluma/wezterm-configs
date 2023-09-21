local wezterm = require("wezterm")

local module = {}

function module.apply_to_config(config)
    config.window_background_opacity = 0.75
    config.color_scheme = "Tokyo Night"

    config.use_fancy_tab_bar = false
    --config.hide_tab_bar_if_only_one_tab = true
    config.inactive_pane_hsb = {
        saturation = 0.6,
        brightness = 0.4,
    }
end

return module
