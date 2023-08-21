#!/bin/bash

dir=${0%/*}

source ${dir}/core/colors.sh
source ${dir}/core/inputs.sh

c_bas
input 'Host name'

source ${dir}/core/func_wp.sh
source ${dir}/core/variables.sh

####################################
# WP INSTALL
####################################
user_wp_db "Enter User_db" 
user_wp "Enter User for admin WP"
pass_wp "Enter Pass for admin WP"
wp_core "download --force"
wp_config "create --dbname=${wp_db_name} --dbuser=${USER_DB} --prompt --dbhost=localhost --force"
wp_db "create"
wp_core "install --url=${HOST_NAME} --title=${HOST_NAME%%.*} --admin_user=${USER_ADMIN} --admin_password=${PASS_ADMIN} --admin_email=webmaster@${HOST_NAME}"

echo ""
echo "https://${HOST_NAME}/wp-admin"
echo --------------------
echo ${USER_ADMIN}
echo ${PASS_ADMIN}