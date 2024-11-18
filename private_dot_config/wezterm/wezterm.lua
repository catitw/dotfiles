local appearance = require "appearance"
local launch = require "launch"
local font = require "font"
local mapping = require "mapping"

local c = {}

appearance.apply_to_config(c)
launch.apply_to_config(c)
font.apply_to_config(c)
mapping.apply_to_config(c)

return c
