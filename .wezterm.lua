-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- We kick off wezterm from Windows side
-- This file is symlinked from Windows to where it lives on WSL2 Ubuntu
config.default_domain = 'WSL:Ubuntu-24.04'

return config
