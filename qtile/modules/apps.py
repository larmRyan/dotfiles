"""
Aliases for common applications
"""

apps = {
  "terminal":                   "alacritty",
  "web_browser":                "firefox",
  "file_manager":               "alacritty --class FileManager -e ranger",
  "local_music_player":         "alacritty --class Ncmpcpp -e ncmpcpp",
  "streaming_music_player":     "spotify",
  "program_launcher":           "rofi -theme ~/.config/rofi/app_menu.rasi -show drun",
  "shutdown_menu":              "",
  "text_editor":                "alacritty -e nvim",
  "code_editor":                "codium"
}