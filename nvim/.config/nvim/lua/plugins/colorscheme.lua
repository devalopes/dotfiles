-- Ayu mirage
require('ayu').setup({
  mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  -- overrides = {
  --   Normal = {
  --     bg = "None"
  --   }
  -- }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})
require('ayu').colorscheme('ayu-mirage')
require('lualine').setup({
  options = {
    theme = 'ayu_mirage',
  },
})
--
