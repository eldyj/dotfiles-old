#! bash oh-my-bash.module
p(){
  case "$1" in
    "i")
      sudo nala install $_
      ;;
    "r")
      sudo nala remove $_
      ;;
    "u")
      sudo nala update
      ;;
    "f")
      nala search $_
      ;;
    "uu")
      sudo nala upgrade
      ;;
  esac
}
