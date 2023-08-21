input () {
  while read -p "$1: $(c_purple)" HOST_NAME; do
      if [ $HOST_NAME ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}

user_db () {
  while read -p "$1: $(c_purple)" USER_NAME; do
      if [ $USER_NAME ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}