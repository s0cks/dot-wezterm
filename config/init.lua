local wt = require('wezterm')
local config = wt.config_builder()
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 14
config.animation_fps = 120
config.cursor_blink_ease_in = 'EaseOut'
config.cursor_blink_ease_out = 'EaseOut'
config.cursor_blink_rate = 650
config.default_cursor_style = 'BlinkingBlock'
config.color_scheme = 'flexoki-dark'
config.window_decorations = 'RESIZE'
config.default_prog = {
  '/opt/homebrew/bin/zellij',
  'attach',
  'main',
  '--create',
}
config.font = require('font')
config.window_background_opacity = 0.7
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.mouse_bindings = require('config.mouse_bindings')
wt.on('format-tab-title', require('format-tab'))
return config
