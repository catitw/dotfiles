local module = {}

---@param c Wezterm
function module.apply_to_config(c)
  -- Spawn a fish shell in login mode
  c.default_prog = { "/usr/bin/fish", "-l" }
end

return module
