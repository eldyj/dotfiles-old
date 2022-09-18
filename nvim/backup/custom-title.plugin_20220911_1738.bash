omb_title(){
  local cur_cmd=$BASH_COMMAND
  if [[ ("$(echo $cur_cmd | grep _omb_)" = "" ) && ( "$(echo $cur_cmd | grep vim)" = "" ) ]];then
    echo -n "$BASH_COMMAND"
    spwd
  elif [ "$(echo $cur_cmd | grep vim)" != "" ];then
    local vim_cmd="$(echo $cur_cmd | awk '{ print $1 }')"
    local vim_file="$(echo $cur_cmd | awk '{ print $2 }')"
    echo -n "$vim_cmd $(spwd --short)/$vim_file"
  else
    spwd
  fi
}
custom_title_start(){
trap 'echo -ne "\033]0;$(omb_title)\007"' DEBUG
