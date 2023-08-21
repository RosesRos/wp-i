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
wp_download "download --force"
user_db "Enter User for dabatabase WP"
wp_config 'create --dbname='${wp_db_name}' --dbuser='$wp_db_user' --prompt --dbhost=localhost --force'
