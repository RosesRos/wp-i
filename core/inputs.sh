input () {
  while read -p "$1: $(c_purple)" HOST_NAME; do
      if [ $HOST_NAME ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}

user_wp_db () {
  while read -p "$1: $(c_purple)" USER_DB; do
      if [ $USER_DB ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}

user_wp () {
  while read -p "$1: $(c_purple)" USER_ADMIN; do
      if [ $USER_ADMIN ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}

pass_wp () {
  while read -p "$1: $(c_purple)" PASS_ADMIN; do
      if [ $PASS_ADMIN ]; then
          break;c_clean
      else echo "$(c_red) $1 should not be empty";c_clean;
      fi
  done
}