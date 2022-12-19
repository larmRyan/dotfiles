local _M = {
    terminal        = "alacritty",
    editor          = "nvim",
    browser         = "firefox",
    text_editor     = "codium",
    music_streamer  = "spotify",
    file_manager    = "thunar",
}

_M.editor_cmd = _M.terminal .. " -e " .. _M.editor
_M.manual_cmd = _M.terminal .. " -e man awesome"

return _M
