colors=(
  0xffff6666
  0xffff7f66
  0xffff9966
  0xffffb366
  0xffffcc66
  0xffffe666
  0xffffff66
  0xffe5ff66
  0xffccff66
  0xffb3ff66
  0xff99ff66
  0xff80ff66
  0xff66ff66
  0xff66ff7f
  0xff66ff99
  0xff66ffb3
  0xff66ffcc
  0xff66ffe6
  0xff66ffff
  0xff66e6ff
  0xff66ccff
  0xff66b3ff
  0xff6699ff
  0xff667fff
  0xff6666ff
  0xff8066ff
  0xff9966ff
  0xffb366ff
  0xffcc66ff
  0xffe566ff
  0xffff66ff
  0xffff66e5
  0xffff66cc
  0xffff66b3
  0xffff6699
  0xffff6680
  0xff666666
)

for (( i = ${#colors[@]}-1; i >= 0; i-- ))
do
  colors+=(${colors[$i]})
done

i=0

while [ '0' = '0' ];do
  if [ "$i" == "$(expr ${#colors[@]}-1)" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi
  hyprctl keyword general:col.active_border ${colors[${i}]}
  sleep 0.05s
done
