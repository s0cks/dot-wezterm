---@author @s0cks
---@license MIT

local wt = require('wezterm') ---@type Wezterm
print(package.path)

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

-- wt.on('update-status', require('update-status'))

return require('config')
