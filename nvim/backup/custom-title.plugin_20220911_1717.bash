omb_title(){
  local cur_cmd=$BASH_COMMAND
  if [[ ("$(echo $cur_cmd | grep _omb_)" = "") && ( "$(echo $cur_cmd | grep vim)" = "" ) ]];then
    echo -ne "$BASH_COMMAND"
    spwd
  elif 
  fi
}
trap 'echo -ne "\033]0;$(omb_title)\007"' DEBUG
