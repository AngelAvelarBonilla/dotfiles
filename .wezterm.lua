-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Settings for all
config.font = wezterm.font('JetBrains Mono')
config.color_scheme = "Catppuccin Mocha"
config.audible_bell = "Disabled"

-- Helper to check for macOS
local is_mac = wezterm.target_triple:find("apple") ~= nil

if is_mac then
    -- macOS-specific settings
    config.font_size = 16
else
    -- Windows settings
    -- We kick off wezterm from Windows side
    -- This file is symlinked from Windows to where it lives on WSL2 Ubuntu
    config.default_domain = 'WSL:Ubuntu-24.04'
    config.window_decorations = "RESIZE"
    config.font_size = 14
end

return config
