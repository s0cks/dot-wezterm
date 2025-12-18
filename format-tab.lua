local wez = require('wezterm')
local colors = require('flexoki.dark')

local function get_tab_title(info)
  local title = info.tab_title
  if title and #title > 0 then
    return title
  end
  return info.active_pane.title
end

return function(tab, tabs, panes, config, hover, max_width)
  local title = get_tab_title(tab)
  local bg = colors.ui
  local fg = colors.tx

  if tab.is_active then
    bg = colors['ui-3']
    fg = colors['pu']
  elseif hover then
    bg = colors['ui-2']
    fg = colors['bl']
  end

  -- title = wez.truncate_right(title, max_width - 2)

  return {
    { Background = { Color = bg } },
    { Foreground = { Color = fg } },
    { Text = title },
  }
end
