local wezterm = require("wezterm")
local layout = require("layout")
local keybinds = require("keybinds")
local events = require("events")
local cmd = require("cmd")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

layout.apply_to_config(config)
keybinds.apply_to_config(config)

config.default_prog = { 
    "C:/Users/Max Nordlund/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe"
}

config.launch_menu = cmd

config.font = wezterm.font("Hack NFM", {weight="Bold", stretch="Normal", style="Italic"}) -- C:\USERS\MAX NORDLUND\APPDATA\LOCAL\MICROSOFT\WINDOWS\FONTS\HACK BOLD ITALIC NERD FONT COMPLETE MONO WINDOWS COMPATIBLE.TTF, DirectWrite

return config
