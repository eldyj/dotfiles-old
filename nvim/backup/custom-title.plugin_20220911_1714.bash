omb_title(){

}
trap 'echo -ne "\033]0;$([ "$(echo $BASH_COMMAND | grep _omb_)" = "" ] && echo "$BASH_COMMAND ")$(spwd)\007"' DEBUG
