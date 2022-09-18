echo $(hyprctl activewindow | grep -v 'Window' | grep title) |
  sed "s|title: ||"
