---@author @s0cks
---@license MIT

local wt = require('wezterm')
local config = wt.config_builder()
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 14

config.color_scheme = 'flexoki-dark'
config.default_prog = { '/opt/homebrew/bin/zellij', 'attach', 'main', '--create' }
config.font = require('font')
config.window_background_opacity = 0.7
config.tab_bar_style = require('style/tab_bar')

return config
