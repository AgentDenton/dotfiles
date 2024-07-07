local wezterm = require('wezterm')
local c = wezterm.config_builder()
local act = wezterm.action

c.font = wezterm.font({
  family = 'Iosevka Nerd Font'
})

c.font_size = 15
c.command_palette_font_size = c.font_size * 1.1

c.color_scheme = 'Catppuccin Frappe'

c.use_fancy_tab_bar = false

c.audible_bell = 'Disabled'

c.adjust_window_size_when_changing_font_size = false
c.window_padding = {left = 0, right = 0, top = 15, bottom = 0}

c.inactive_pane_hsb = {brightness = 0.90}

-- TODO: Explore https://github.com/nekowinston/dotfiles/blob/main/home/apps/wezterm/wezterm.lua
c.keys = {
  {
    key = '\\',
    mods = 'ALT',
    action = act.SplitHorizontal({domain = "CurrentPaneDomain"}),
  },
  {
    key = '-',
    mods = 'ALT',
    action = act.SplitVertical({domain = "CurrentPaneDomain"}),
  },
  {
    key = 'h',
    mods = 'ALT',
    action = act.ActivatePaneDirection("Left"),
  },
  {
    key = 'j',
    mods = 'ALT',
    action =  act.ActivatePaneDirection("Down"),
  },
  {
    key = 'k',
    mods = 'ALT',
    action = act.ActivatePaneDirection("Up"),
  },
  {
    key = 'l',
    mods = 'ALT',
    action = act.ActivatePaneDirection("Right"),
  },
  {
    key = 'n',
    mods = 'ALT',
    action = act.SpawnTab("CurrentPaneDomain"),
  },
  {
    key = 'f',
    mods = 'ALT',
    action = act.TogglePaneZoomState,
  },
  {
    key = '/',
    mods = 'ALT',
    action = act.Search({CaseInSensitiveString = ""}),
  },
}

return c
