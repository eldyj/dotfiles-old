colors=(
  "ffeeaa"
  "88aaff"
  "99ddff"
  "723489"
  "abcdef"
  "123456"
)

while [ exit 0 ]
  hyprctl keyword general:col.active_border 0xff$color
  sleep 0.5s
done
