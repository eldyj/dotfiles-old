colors=$(node ~/.confi)
for (( i = ${#colors[@]}-1; i >= 0; i-- ))
do
  colors+=(${colors[$i]})
done

i=0

while [ '0' = '0' ];do
  if [ "$i" == "$(expr ${#colors[@]} - 2)" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi
  hyprctl keyword general:col.active_border ${colors[${i}]}
  sleep 0.05s
done
