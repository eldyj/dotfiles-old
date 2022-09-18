hex=( 0 1 2 3 4 5 6 7 8 9 

for color in ${colors[@]};do
  hyprctl keyword general:col.active_border 0xff$color
  sleep 0.1s
done
