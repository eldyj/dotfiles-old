omb_title(){
  local cur_cmd
  if [[ ("$(echo $BASH_COMMAND | grep _omb_)" = "") && () ]];then
    echo -ne "$BASH_COMMAND"
    spwd
  fi
}
trap 'echo -ne "\033]0;$(omb_title)\007"' DEBUG
