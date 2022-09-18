als(){
  alias "$1"="$2"
}

strsplit(){
  IFS="$2" read -ra $3 <<< ""
}
