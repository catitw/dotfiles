local wezterm = require "wezterm"

local module = {}

function module.apply_to_config(c)
  c.font_size = 13
  c.font = wezterm.font "Zed Plex Mono"

  c.font = wezterm.font_with_fallback {
    "JetBrains Mono",
  }
end

return module
