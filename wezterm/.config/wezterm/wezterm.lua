-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
 config.color_scheme = 'AdventureTime'



config.enable_tab_bar = false


local home = os.getenv("HOME")
config.window_background_image = home .. '/.config/wezterm/ruka.png'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.005,
  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,
  -- You can adjust the saturation also.
  saturation = 1.0,
}


-- and finally, return the configuration to wezterm
return config