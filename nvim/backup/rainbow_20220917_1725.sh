colors=(
92ff8f
9efc85
aaf87c
b4f573
bef16b
c8ed64
d2e95e
dbe558
e3e153
ebdc50
f3d84d
fbd34c
ffce4c
ffc94d
ffc44f
ffbf52
ffb955
ffb45a
ffaf5f
ffa965
ffa46b
ff9f71
ff9a78
ff9580
ff9187
ff8c8f
ff8997
ff859f
ff83a8
ff80b0
ff7fb9
ff7ec1
ff7eca
ff7ed2
ff7fda
ff81e2
ff82ea
fe85f1
f387f8
e88aff
)

for (( i = ${#colors[@]}-1; i >= 0; i-- ))
do
  col=${colors[$i]}
  [ "$col" != "" ] && colors+=( $col )
done

i=0

while [ '0' = '0' ];do
  if [ "$i" == "${#colors[@]}" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi

  sleep 0.2s
done
