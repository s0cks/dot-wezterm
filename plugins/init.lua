local M = {}

local wez = require('wezterm')
local plugin_require = wez.plugin.require

local plugins = {
  -- {
  --   'https://github.com/sunbearc22/sb_show_wallpapers.wezterm.git',
  --   require('plugins.wallpapers'),
  -- },
}

function M.apply_to_config(config)
  for _, plugin in ipairs(plugins) do
    plugin_require(plugin[1]).apply_to_config(config, plugin[2])
  end
end

return M
