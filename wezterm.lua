---@author @s0cks
---@license MIT

local wt = require('wezterm') ---@type Wezterm
print('LUA_PATH: ' .. os.getenv('LUA_PATH'))

local runtime_paths = {
  os.getenv('LUA_PATH'),
}
package.path = package.path .. ';' .. (table.concat(runtime_paths, ';'))

print('package.path (after): ' .. package.path)

-- wt.on('update-status', require('update-status'))

return require('config')
