local wezterm = require "wezterm"
local act = wezterm.action

local module = {}

local MOD_KEY = "CTRL|SHIFT"

local function clipboard(c)
  c.keys = {
    {
      key = "C",
      mods = MOD_KEY,
      action = wezterm.action.CopyTo "ClipboardAndPrimarySelection",
    },

    { key = "V", mods = MOD_KEY, action = act.PasteFrom "Clipboard" },
  }
end

local function split(c)
  c.keys = {
    {
      key = "|",
      mods = MOD_KEY,
      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
    },

    {
      key = "\\",
      mods = MOD_KEY,
      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
    },
  }
end

local function font_size(c)
  c.keys = {
    { key = "-", mods = MOD_KEY, action = wezterm.action.DecreaseFontSize },
    { key = "=", mods = MOD_KEY, action = wezterm.action.IncreaseFontSize },
  }
end

local function tab(c)
  c.keys = {
    { key = "t", mods = MOD_KEY, action = act.SpawnTab "CurrentPaneDomain" },
    { key = "q", mods = MOD_KEY, action = wezterm.action.CloseCurrentTab { confirm = true } },

    { key = "LeftArrow", mods = MOD_KEY, action = act.ActivateTabRelative(-1) },
    { key = "RightArrow", mods = MOD_KEY, action = act.ActivateTabRelative(1) },
  }

  for i = 1, 8 do
    table.insert(c.keys, {
      key = tostring(i),
      mods = MOD_KEY,
      action = act.ActivateTab(i - 1),
    })
  end
end

function module.apply_to_config(c)
  clipboard(c)
  split(c)
  font_size(c)
  tab(c)
end

return module
