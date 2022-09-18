colors=(
92ff8f
b0f677
caed63
e1e254
f6d64d
ffc94d
ffbb54
ffae60
ffa070
ff9383
ff8997
ff81ad
ff7ec3
ff7fd9
ff83ed
e88aff
)

for (( i = ${#colors[@]}-2; i >= 0; i-- ))
do
  colors+=( ${color[i]} )
done

echo ${arr}

i=0

while [ '0' = '0' ];do
  hyprctl keyword general:col.active_border 0xff${colors[${i}]}
  if [ "$i" == "${#colors[@]}" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi
  sleep 0.5s
done
