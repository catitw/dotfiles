local wezterm = require "wezterm"

local module = {}

---@class Wezterm
function module.apply_to_config(c)
  c.font_size = 13

  -- check with `wezterm ls-fonts`
  c.font = wezterm.font_with_fallback {
    { family = "Zed Plex Mono" },
    { family = "JetBrains Mono" },
  }
end

return module
