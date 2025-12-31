local wez = require('wezterm')
local io = require('io')
local os = require('os')
local action = wez.action

wez.on('edit-scrollback', function(window, pane)
  print('opening scrollback in neovim.....')
  local text = pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)
  local name = os.tmpname()
  local f = io.open(name, 'w+')
  if f == nil then
    print('failed to open scrollback from: ' .. name)
    return
  end

  print('opening wezterm scrollback in: ' .. name)
  f:write(text)
  f:flush()
  f:close()

  window.perform_action(
    action.SpawnCommandInNewWindow({
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
    action = action.EmitEvent('edit-scrollback'),
  },
}
