require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "fish",
    "go",
    "html",
    "javascript",
    "json",
    "latex",
    "python",
    "ruby",
    "rust",
    "tsx",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
})