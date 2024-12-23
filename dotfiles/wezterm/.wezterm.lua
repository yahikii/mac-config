-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font 'DroidSansM Nerd Font'
config.font_size = 14
-- Color scheme
config.color_scheme = 'rose-pine-moon'

-- Keymaps
config.disable_default_key_bindings = false
config.keys = {
  {
    key = '+',
    mods = 'CTRL',
    action = wezterm.action.IncreaseFontSize,
  },
  {
    key = '-',
    mods = 'CTRL',
    action = wezterm.action.DecreaseFontSize,
  },
  {
    key = '0',
    mods = 'CTRL',
    action = wezterm.action.ResetFontSize,
  },
  {
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CopyTo('Clipboard'),
  },
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.PasteFrom('Clipboard'),
  },
}

-- Window decorations
config.enable_tab_bar = true

-- Window padding
config.window_padding = {
  left = 15,
  right = 10,
  top = 0,
  bottom = 5,
}

-- Window opacity
config.window_background_opacity = 0.90
config.macos_window_background_blur = 30

-- Color gradient
config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#151021',
    '#2a273f',
  },
  interpolation = 'Linear',
  blend = 'Rgb',
}

-- Return the configuration to wezterm
return config