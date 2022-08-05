"""
Aliases for common applications
"""

apps = {
  "terminal":                   "alacritty",
  "web_browser":                "firefox",
  "file_manager":               "alacritty --class FileManager -e ranger",
  "local_music_player":         "alacritty --class Ncmpcpp -e ncmpcpp",
  "streaming_music_player":     "spotify",
  "program_launcher":           "rofi -combi-modi window,drun,ssh -theme solarized -font 'hack 10' -show combi",
  "shutdown_menu":              "",
  "text_editor":                "alacritty -e nvim",
  "code_editor":                "codium"
}