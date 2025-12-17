local wez = require('wezterm')
return wez.font({
  {
    family = 'Monaspace Argon Var',
    style = 'Normal',
    harfbuzz_features = {
      '+liga',
      '+ital',
      '+ss01',
      '+ss02',
      '+ss03',
      '+ss04',
      '+ss05',
      '+ss06',
      '+ss07',
      '+ss08',
      '+ss09',
      '+ss10',
    },
  },
})
