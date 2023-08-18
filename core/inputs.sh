input () {
  while read -p "$1: $(c_purple)" HOST_NAME; do
      if [ $HOST_NAME ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}

pass_db () {
  while read -p "$1: $(c_purple)" pass_db; do
      if [ $pass_db ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}