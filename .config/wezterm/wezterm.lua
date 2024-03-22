local wezterm = require("wezterm")

local config = {
    enable_wayland = true,
    prefer_egl=true,
    window_decorations = "None",
    hide_tab_bar_if_only_one_tab = true,
    audible_bell = "Disabled",
    check_for_updates = true,
    color_scheme = "Andromeda",
    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 0.5,
    },
    font_size = 10.0,
    launch_menu = {},
    -- leader = { key="b", mods="CTRL" },
    disable_default_key_bindings = true,
    keys = {
        -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
        { key = "_", mods = "ALT|SHIFT",       action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        { key = "|",mods = "ALT|SHIFT",       action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        { key = "z", mods = "ALT",       action="TogglePaneZoomState" },
        { key = "t", mods = "ALT",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
        { key = "h", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Right"}},
        { key = "LeftArrow", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "DownArrow", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "UpArrow", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "RightArrow", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Right"}},
        { key = "H", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        { key = "J", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        { key = "K", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        { key = "L", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
        { key = "LeftArrow", mods = "ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        { key = "DownArrow", mods = "ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        { key = "UpArrow", mods = "ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        { key = "RightArrow", mods = "ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
        { key = "1", mods = "ALT",       action=wezterm.action{ActivateTab=0}},
        { key = "2", mods = "ALT",       action=wezterm.action{ActivateTab=1}},
        { key = "3", mods = "ALT",       action=wezterm.action{ActivateTab=2}},
        { key = "4", mods = "ALT",       action=wezterm.action{ActivateTab=3}},
        { key = "5", mods = "ALT",       action=wezterm.action{ActivateTab=4}},
        { key = "6", mods = "ALT",       action=wezterm.action{ActivateTab=5}},
        { key = "7", mods = "ALT",       action=wezterm.action{ActivateTab=6}},
        { key = "8", mods = "ALT",       action=wezterm.action{ActivateTab=7}},
        { key = "9", mods = "ALT",       action=wezterm.action{ActivateTab=8}},
        { key = "w", mods = "ALT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
        { key = "C", mods = "ALT",       action=wezterm.action{CloseCurrentPane={confirm=false}}},

        { key = "n", mods="SHIFT|CTRL",     action="ToggleFullScreen" },
        { key="v",   mods="SHIFT|CTRL",     action=wezterm.action.PasteFrom 'Clipboard'},
        { key="c",   mods="SHIFT|CTRL",     action=wezterm.action.CopyTo 'Clipboard'},
    },
    set_environment_variables = {},
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.front_end = "Software" -- OpenGL doesn't work quite well with RDP.
    config.term = "" -- Set to empty so FZF works on windows
    config.default_prog = {"powershell.exe", "-NoLogo"}
    table.insert(config.launch_menu, { label = "PowerShell", args = {"powershell.exe", "-NoLogo"} })

    -- Find installed visual studio version(s) and add their compilation
    -- environment command prompts to the menu
    for _, vsvers in ipairs(wezterm.glob("Microsoft Visual Studio/20*", "C:/Program Files (x86)")) do
        local year = vsvers:gsub("Microsoft Visual Studio/", "")
        table.insert(config.launch_menu, {
            label = "x64 Native Tools VS " .. year,
            args = {"cmd.exe", "/k", "C:/Program Files (x86)/" .. vsvers .. "/BuildTools/VC/Auxiliary/Build/vcvars64.bat"},
        })
    end
else
    config.default_prog = { '/bin/bash' }
    table.insert(config.launch_menu, { label = "bash", args = {"bash", "-l"} })
end

return config
