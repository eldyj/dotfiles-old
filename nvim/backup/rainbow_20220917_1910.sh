colors
cols=$(node ~/.config/hypr/scripts/colors.js)
i=0

while [ '0' = '0' ];do
  if [ "$i" == "$(expr ${#colors[@]} - 2)" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi
  hyprctl keyword general:col.active_border ${colors[$i]}
  sleep 0.002s
done
