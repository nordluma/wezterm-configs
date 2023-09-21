local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
    local tab, pane, window = mux.spawn_window({})
    window:gui_window():maximize()
end)

wezterm.on("update-right-status", function(window, pane)
    local name = window:active_key_table()
    if name then
        name = "MODE: " .. name
    end
   window:set_right_status(name or window:active_workspace()) 
end)
