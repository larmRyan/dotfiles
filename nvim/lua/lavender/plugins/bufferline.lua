require('bufferline').setup({
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center",
      }
    },
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      -- Only show errors for other buffers, not the current one.
      -- The current buffer will have errors shown in the statusline
      if context.buffer:current() then
        return ''
      end
      return "!"
    end,
  }
})