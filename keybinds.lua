local wezterm = require("wezterm")
local act = wezterm.action

local keybinds = {}

function keybinds.apply_to_config(config)
    config.key_tables = {
        pane = {
            {key = "n", action = act.SplitHorizontal {domain = "CurrentPaneDomain"}},
            {key = "x", action = act.CloseCurrentPane {confirm = true}},
            {key = "Escape", action = "PopKeyTable"},
        },
        tab = {
            {key = "n", action = act.SpawnTab("CurrentPaneDomain")},
            {key = "x", action = act.CloseCurrentTab {confirm = true}},
            {key = "Escape", action = "PopKeyTable"},
        },
        session = {
            {
                key = "w",
                action = act.ShowLauncherArgs {
                    title = "Sessions",
                    flags = "DOMAINS|WORKSPACES"
                },
            },
        },
    }
    
    config.keys = {
        -- Key Table selection
        {
            key = "p",
            mods = "CTRL",
            action = act.ActivateKeyTable {
                name = "pane",
                one_shot = true,
            },
        },
        {
            key = "t",
            mods = "CTRL",
            action = act.ActivateKeyTable {
                name = "tab",
                one_shot = true,
            },
        },
        {
            key = "o",
            mods = "CTRL",
            action = act.ActivateKeyTable {
                name = "session",
                one_shot = true,
            },
        },

        -- Navigation between panes
        {key = "LeftArrow", mods = "ALT", action = act.ActivatePaneDirection("Left")},
        {key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left")},
        {key = "RightArrow", mods = "ALT", action = act.ActivatePaneDirection("Right")},
        {key = "l",mods = "ALT", action = act.ActivatePaneDirection("Right")},
        {key = "UpArrow", mods = "ALT", action = act.ActivatePaneDirection("Up")},
        {key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up")},
        {key = "DownArrow", mods = "ALT", action = act.ActivatePaneDirection("Down")},
        {key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down")},

        -- Show Launcher
        {
            key = "l",
            mods = "CTRL",
            action = act.ShowLauncherArgs {
                flags = "LAUNCH_MENU_ITEMS"
            }
        },
    }

end

return keybinds
