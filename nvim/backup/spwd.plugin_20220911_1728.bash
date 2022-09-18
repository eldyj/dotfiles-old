spwd(){
  spwd_src="$(pwd | sed "s|$HOME|~|")"
  IFS='/' read -ra spwd_arr <<< "$spwd_src"
  local skip="0"

  if (( "${#spwd_arr[@]}" < "7" ));then
    case "${spwd_src:0:1}" in
      "/")
        echo -n "!"
        ;;
      "~")
        echo -n "~"
        ;;
    esac
  else
    local skip=$(expr ${#spwd_arr[@]} - 5)
    echo -n "..."
  fi

  for dir in ${spwd_arr[@]}; do
    if [ "$skip" != "0" ];then
      skip=$(expr $skip - 1)
      continue
    fi
    if [[ ( "$dir" != "~" ) && ( "$argv[0]" != "short" ) ]];then
      case "$dir" in
        "${spwd_arr[-1]}")
          echo -n "/$dir"
          ;;
        "$dir")
          echo -n "/${dir:0:1}"
          [ "${dir:0:1}" = "." ] &&
            echo -n "${dir:1:1}"
          ;;
      esac
    fi
  done
}
