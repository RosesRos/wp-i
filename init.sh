#!/bin/bash

dir=${0%/*}
source ${dir}/core/colors.sh
source ${dir}/core/inputs.sh
c_bas
mv ${dir}/* ${dir}./
input "YOUR HOST_NAME "
pushd ${dir}./
rm -rf ${dir}/files1/
mysql -h $HOST_NAME --user=admin --password --execute="create database $1"
rm -rf ${dir}/core
mv wp/* ${dir}/
rm -rf wp/
rm -rf ${dir}/index.sh
echo "your database for WP: $1"


