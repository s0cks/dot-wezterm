local mods = require('config.mods')
local wez = require('wezterm')

return {
  {
    key = 'b',
    mods = mods.HYPER,
    action = wez.action_callback(function(window, pane)
      if wez.GLOBAL.brightness == 0.0 then
        wez.GLOBAL.brightness = 0.8
      else
        wez.GLOBAL.brightness = 0.0
      end
    end),
  },
}
