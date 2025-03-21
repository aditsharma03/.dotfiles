-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
 --config.color_scheme = 'AdventureTime'
 config.color_scheme = 'Darktooth (base16)'
 --config.color_scheme = 'duskfox'
 --config.color_scheme = 'Catppuccin Mocha'



config.enable_tab_bar = false


local home = os.getenv("HOME")
config.window_background_image = home .. '/.config/wezterm/ruka_mayuri.jpg'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.006,
  --brightness = 1,
  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.2,
  -- You can adjust the saturation also.
  saturation = 0.44,
}


-- and finally, return the configuration to wezterm
return config
