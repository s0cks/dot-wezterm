local wez = require('wezterm')
return function(window, pane)
  local elems = {
    { Text = wez.format_utc_date('yyyy-MM-dd HH:mm:ss') },
  }
  window:set_right_status(wez.format(elems))
end
