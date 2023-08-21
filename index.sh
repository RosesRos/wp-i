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