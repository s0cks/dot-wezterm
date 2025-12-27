---@author @s0cks
---@license MIT

local wt = require('wezterm') ---@type Wezterm
local home_dir = os.getenv('HOME')
print('home: ' .. home_dir)

local runtime_paths = {
  '/Users/tazz/.local/share/mise/installs/lua/5.4.8/luarocks/share/lua/5.4/?.lua;/Users/tazz/.local/share/mise/installs/lua/5.4.8/luarocks/share/lua/5.4/?/init.lua;/Users/tazz/.local/share/mise/downloads/lua/5.4.8/lua-5.4.8/luarocks-3.12.2/src/?.lua;/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua;/usr/local/lib/lua/5.4/?.lua;/usr/local/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/Users/tazz/.luarocks/share/lua/5.4/?.lua;/Users/tazz/.luarocks/share/lua/5.4/?/init.lua',
}
package.path = package.path .. ';' .. (table.concat(runtime_paths, ';'))
print('package.path (after): ' .. package.path)

-- wt.on('update-status', require('update-status'))

return require('config')
