require('zen-mode').setup({
  window = {
    backdrop = 0.95,
    width = 120,
    height = 1,
    options = {
      signcolumn = "no",
      number = false,
      relativenumber = false,
      cursorline = false,
      cursorcolumn = false,
    },
  },

  plugins = {
    options = {
      enabled = true,
      ruler = fales,
      showcmd = false,
    },
  }
})