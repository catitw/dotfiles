local module = {}

---@param c Wezterm
local function tab_bar(c)
  c.use_fancy_tab_bar = false
  c.hide_tab_bar_if_only_one_tab = true
  c.tab_bar_at_bottom = true
end

---@param c Wezterm
local function theme(c)
  c.color_scheme = "Catppuccin Mocha"
  c.window_background_opacity = 0.95
end

---@param c Wezterm
local function windows_size(c)
  c.initial_rows = 40
  c.initial_cols = 160
end

---@param c Wezterm
local function padding(c)
  c.window_padding = {
    left = "1.5cell",
    right = "1.5cell",
    top = "0.5cell",
    bottom = "0.5cell",
  }
end

---@param c Wezterm
local function other(c) c.enable_scroll_bar = true end

---@param c Wezterm
function module.apply_to_config(c)
  tab_bar(c)
  theme(c)
  windows_size(c)
  padding(c)
  other(c)
end

return module
