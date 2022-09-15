#!/bin/fish

# API vars
set -l app_id deda86ce67f309f06a1038b0dc48b66c
set -l lat 38.65
set -l lon -90.28
set -l unit metric

# Get Color scheme
set -l red "#f38ba8"
set -l yellow "#f9e2af"
set -l green "#a6e3a1"
set -l blue "#89b4fa"

# Vars related to current weather conditions
# and how they're displayeds
set -l cache_dir "$HOME/.cache/eww/weather"
set -l weather_color "$cache_dir/color"
set -l weather_cache "$cache_dir/cache"
set -l weather_icon "$cache_dir/icon"

# Create the cache directory if it doesn't exist
if test ! -e $cache_dir
  mkdir -p $cache_dir
end

function get_color
  # Sets the color of the weather icon depending on current temperature
  # $argv should be a single integer value

  if test $unit = metric
    # For metric units
    if test $argv -gt 37
      echo $red > $weather_color
    else if test $argv -gt 27
      echo $yellow > $weather_color
    else if test $argv -gt 16
      echo $green > $weather_color
    else
      echo $blue > $weather_color
    end
  else
    # For imperial units
    if test $argv -gt 100
      echo $red > $weather_color
    else if test $argv -gt 80
      echo $yellow > $weather_color
    else if test $argv -gt 60
      echo $green > $weather_color
    else
      echo $blue > $weather_color
    end
  end
end

function get_icon
  # Returns the appropriate icon given current weather conditions
  set -l weather_icon_code "50n"
  
  switch($weather_icon_code)
  case "11d" # Thunderstorms
  case "09d" # Drizzle
  case "10d" # Rain
  case "13d" # Freezing rain
  case "09d" # Showers
  case "13d" # Snow
  case "50d" # Smoke/dust/haze
  case "01d" # Clear day
  case "01n" # Clear night
  case "02d" # Clouds day
  case "02n" # Clouds night
  case "03d" # Scattered clouds day
  case "03n" # Scattered clouds night
  case "04d" # Overcast day
  case "04n" # Overcast night
end

function get_weather_data
  # Queries API for current weather data
  echo "TODO"
end