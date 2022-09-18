hex=( 0 1 2 3 4 5 6 7 8 9 'a' 'b' 'c' 'd' 'e' 'f' )

for i in ${hex[]};do
  hyprctl keyword general:col.active_border 0xffffeeaa
done
