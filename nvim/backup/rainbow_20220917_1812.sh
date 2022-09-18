colors=(
395492
365794
335b97
305e99
2e629b
2b659e
2869a0
256ca2
2270a4
1f73a7
1c76a9
1a7aab
177dae
1481b0
1184b2
0e88b4
0b8bb7
098fb9
0692bb
0396be
0099c0

#039cbf
 	  #069fbe
#09a2bc
#0ca5bb
#0fa8ba
#12abb9
#15aeb8
#18b1b6
#1bb4b5
#1eb7b4
#22bab3
#25bdb2
#28c0b0
#2bc3af
#2ec6ae
#31c9ad
#34ccac
#37cfaa
#3ad2a9
#3dd5a8
)

for (( i = ${#colors[@]}-1; i >= 0; i-- ))
do
  colors+=(${colors[$i]})
done

i=0

while [ '0' = '0' ];do
  if [ "$i" == "${#colors[@]}" ];then
    i=0
  else
    i="$(expr $i + 1)"
  fi
  hyprctl keyword general:col.active_border 0xff${colors[${i}]}
  sleep 0.05s
done
