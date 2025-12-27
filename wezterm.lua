---@author @s0cks
---@license MIT

local wt = require('wezterm') ---@type Wezterm

local runtime_paths = {}
package.path = package.path .. ';' .. (table.concat(runtime_paths, ';'))
print('package.path (after): ' .. package.path)

-- wt.on('update-status', require('update-status'))

return require('config')
