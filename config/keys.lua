local mods = require('config.mods')
local wez = require('wezterm')

wez.on('edit-scrollback', function(window, pane)
  local text = pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)
  local name = os.tmpname()
  local f = io.open(name, 'w+')
  if not f then
    print('failed to open scrollback: ' .. name)
    return
  end

  f:write(text)
  f:flush()
  f:close()

  window.perform_action(
    wez.action.SpawnCommandInNewWindow({
      args = { 'nvim', name },
    }),
    pane
  )
  wez.slep_ms(1000)
  os.remove(name)
end)

return {
  {
    key = 'E',
    mods = 'CTRL',
    action = wez.action.EmitEvent('edit-scrollback'),
  },
}
