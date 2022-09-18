omb_title(){
  if [ "$(echo $BASH_COMMAND | grep _omb_)" = "" ];then echo -ne "$BASH_COMMAND ")$(spwd)
}
trap 'echo -ne "\033]0;$(omb_title)\007"' DEBUG
