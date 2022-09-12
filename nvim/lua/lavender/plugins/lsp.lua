require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'clangd',           -- C/C++
    'cssls',            -- CSS
    'gopls',            -- Go
    'html',             -- HTML
    'texlab',           -- TeX
    'sumneko_lua',      -- Lua
    'pyright',          -- Python
    'solargraph',       -- Ruby
    'rust_analyzer',    -- Rust
    'tsserver',         -- Typescript/Javascript
  },
})