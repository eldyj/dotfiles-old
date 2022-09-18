set wofi "$(ps | grep 'wofi')"

if '$wofi' != ''
  killall wofi
end
