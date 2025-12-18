---@author @s0cks
---@license MIT

local wt = require('wezterm')
local runtime_paths = {
  wt.home_dir .. '/.local/share/mise/installs/lua/5.2/luarocks/share/lua/5.2/?.lua',
  wt.home_dir .. '/.local/share/mise/installs/lua/5.2/luarocks/share/lua/5.2/?/init.lua',
  wt.home_dir .. '/.local/share/mise/downloads/lua/5.2/lua-5.4.8/luarocks-3.12.2/src/?.lua',
  '/usr/local/share/lua/5.2/?.lua',
  '/usr/local/share/lua/5.2/?/init.lua',
  '/usr/local/lib/lua/5.2/?.lua',
  '/usr/local/lib/lua/5.2/?/init.lua',
  wt.home_dir .. '/.luarocks/share/lua/5.2/?.lua',
  wt.home_dir .. '/.luarocks/share/lua/5.2/?/init.lua',
  './?.lua',
  './?/init.lua',
}
package.path = package.path .. ';' .. (table.concat(runtime_paths, ';'))

local config = wt.config_builder()
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 14

config.color_scheme = 'flexoki-dark'
config.default_prog = { '/opt/homebrew/bin/zellij', 'attach', 'main', '--create' }
config.font = require('font')
config.window_background_opacity = 0.7
wt.on('format-tab-title', require('format-tab'))

return config
