[ "$1" != "" ] &&
  grim -c -g "$1" &&
  grim -c -g "$1" - | wl-copy &&
  exit 0
grim -c
grim -c - | wl-copy
