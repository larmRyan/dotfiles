vim.g.catppuccin_flavour = "mocha"

require('catppuccin').setup({

  compile = {
		enabled = true,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},

  styles = {
    comments = { "italic" },
    booleans = { "italic" },
    loops = { "italic" },
    keywords = { "italic" },
  },

  integrations = {
    treesitter = true,
    lsp_trouble = true,
    nvimtree = true,
    telescope = true,
    which_key = true,
    ts_rainbow = true,
    dashboard = true,
  },
})

vim.cmd [[colorscheme catppuccin]]