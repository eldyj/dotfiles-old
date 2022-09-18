colors=(
  "ffeeaa"
  "88aaff"
  "99ddff"
  
)

for color in ${colors[@]};do
  hyprctl keyword general:col.active_border 0xff$color
  sleep 0.1s
done
