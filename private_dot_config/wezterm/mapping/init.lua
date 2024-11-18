local wezterm = require "wezterm"
local act = wezterm.action

local module = {}

local MOD_KEY = "CTRL|SHIFT"

---@param c Wezterm
local function add_keys(c, keys)
  c.keys = c.keys or {} -- ensure `c.keys` initialized
  for _, key in ipairs(keys) do
    table.insert(c.keys, key)
  end
end

---@param c Wezterm
local function clipboard(c)
  add_keys(c, {
    { key = "C", mods = MOD_KEY, action = act.CopyTo "ClipboardAndPrimarySelection" },
    { key = "V", mods = MOD_KEY, action = act.PasteFrom "Clipboard" },
  })
end

---@param c Wezterm
local function split(c)
  add_keys(c, {
    { key = "|", mods = MOD_KEY, action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = '"', mods = MOD_KEY, action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  })
end

---@param c Wezterm
local function font_size(c)
  add_keys(c, {
    { key = "-", mods = MOD_KEY, action = act.DecreaseFontSize },
    { key = "=", mods = MOD_KEY, action = act.IncreaseFontSize },
  })
end

---@param c Wezterm
local function tab(c)
  add_keys(c, {
    { key = "t",          mods = MOD_KEY, action = act.SpawnTab "CurrentPaneDomain" },
    -- If that was the last pane in the tab, closes the tab. If that was the last tab, closes that window.
    -- If that was the last window, wezterm terminates.
    { key = "q",          mods = MOD_KEY, action = act.CloseCurrentPane { confirm = false } },

    { key = "LeftArrow",  mods = MOD_KEY, action = act.ActivateTabRelative(-1) },
    { key = "RightArrow", mods = MOD_KEY, action = act.ActivateTabRelative(1) },
  })

  for i = 1, 8 do
    table.insert(c.keys, {
      key = tostring(i),
      mods = MOD_KEY,
      action = act.ActivateTab(i - 1),
    })
  end
end

---@param c Wezterm
-- check with `wezterm show-keys`
function module.apply_to_config(c)
  clipboard(c)
  split(c)
  font_size(c)
  tab(c)
end

return module
