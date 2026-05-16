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
    local act = wezterm.action
    config.font_size = 16
    config.keys = {
      -- Process Interrupt
      { key = 'c', mods = 'CMD', action = act.SendKey { key = 'c', mods = 'CTRL' } },
      
      -- Suspend process
      { key = 'z', mods = 'CMD', action = act.SendKey { key = 'z', mods = 'CTRL' } },
      
      -- Exit terminal / EOF
      { key = 'd', mods = 'CMD', action = act.SendKey { key = 'd', mods = 'CTRL' } },
      
      -- Send Ctrl + V to the application (for neovim)
      { key = 'v', mods = 'CMD', action = act.SendKey { key = 'v', mods = 'CTRL' } },
      
      -- Send Ctrl + W to the application (for neovim)
      { key = 'w', mods = 'CMD', action = act.SendKey { key = 'w', mods = 'CTRL' } },
      
      -- Send Ctrl + " " to the application (for Tmux)
      { key = ' ', mods = 'CMD', action = act.SendKey { key = ' ', mods = 'CTRL' } },
    }

else
    -- Windows settings
    -- We kick off wezterm from Windows side
    -- This file is symlinked from Windows to where it lives on WSL2 Ubuntu
    config.default_domain = 'WSL:Ubuntu-24.04'
    config.window_decorations = "RESIZE"
    config.font_size = 14
end

return config
