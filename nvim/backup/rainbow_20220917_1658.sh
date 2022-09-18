colors=(
  "ffeeaa"
  "88aaff"
  "99ddff"
  "723489"
  "abcdef"
  "123456"
)

i=0

while [ '0' = '0' ];do
  hyprctl keyword general:col.active_border 0xff${colors[${i}]}
  if [ "$i" == " ]
  sleep 0.5s
done
