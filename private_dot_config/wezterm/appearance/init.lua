local module = {}

local function tab_bar(c)
  c.use_fancy_tab_bar = false
  c.hide_tab_bar_if_only_one_tab = true
  c.tab_bar_at_bottom = true
end

local function theme(c)
  c.color_scheme = "Catppuccin Mocha"
  c.window_background_opacity = 0.95
end

local function padding(c)
  c.window_padding = {
    left = 2,
    right = 2,
    top = 1,
    bottom = 1,
  }
end

local function other(c) c.enable_scroll_bar = true end

function module.apply_to_config(c)
  tab_bar(c)
  theme(c)
  padding(c)
  other(c)
end

return module
