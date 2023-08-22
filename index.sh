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
name_wp_db "Enter Name_db"
user_wp_db "Enter User_db" 
user_wp "Enter User for admin WP"
pass_wp "Enter Pass for admin WP"
wp_core "download --force"
wp_config "create --dbname=${NAME_DB} --dbuser=${USER_DB} --prompt --dbhost=localhost --force"
wp_core "install --url=${HOST_NAME} --title=${HOST_NAME%%.*} --admin_user=${USER_ADMIN} --admin_password=${PASS_ADMIN} --admin_email=webmaster${HOST_NAME}@gmail.com"

mv ${dir}/* ${dir}./
pushd ${dir}./
rm -rf ${dir}/wp-i/
rm -rf ${dir}/core
rm -rf ${dir}/index.sh
rm -rf ${dir}/README.md

echo ""
echo "https://${HOST_NAME}/wp-admin"
echo --------------------
echo "login: ${USER_ADMIN}"
echo "password: ${PASS_ADMIN}"