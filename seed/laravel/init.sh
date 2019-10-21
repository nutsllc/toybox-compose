#!/bin/bash

self=$(cd $(dirname $0);pwd)
src=${self}
dist=${self}/../..

dirs=(
    "${dist}/5.1/apache-php5.6"
    "${dist}/5.1/apache-php7.0"
    "${dist}/5.1/nginx-php5.6-fpm"
    "${dist}/5.1/nginx-php7.0-fpm"
    "${dist}/5.2/apache-php5.6"
    "${dist}/5.2/apache-php7.0"
    "${dist}/5.2/nginx-php5.6-fpm"
    "${dist}/5.2/nginx-php7.0-fpm"
    "${dist}/5.3/apache-php5.6"
    "${dist}/5.3/apache-php7.0"
    "${dist}/5.3/nginx-php5.6-fpm"
    "${dist}/5.3/nginx-php7.0-fpm"
)

for d in ${dirs[@]}; do
    [ -d ${d} ] && rm -r ${d}
    lara_ver=$(echo ${d} | awk -F "/" '{print $(NF - 1)}')
    php_ver=$(echo ${d} | awk -F "/" '{print $NF}'| sed -e "s/^.*php//" -e "s/-fpm//")
    webserver=$(echo ${d} | awk -F "/" '{print $NF}' | cut -d "-" -f1) 
    echo ${lara_ver}
    echo ${php_ver}
    echo ${webserver}
    echo "------------------------------------"
    exit

    printf "Generate: Dockerfile for Laravel ${lara_ver} with PHP ${php_ver} ..."
    mkdir -p ${d}
    cp ${src}/Dockerfile-seed ${d}/Dockerfile
    cp ${src}/docker-entrypoint.sh-seed ${d}/docker-entrypoint.sh
    chmod 755 ${d}/docker-entrypoint.sh
    sed -i -e "s/{{LARAVEL_VERSION}}/${lara_ver}/" ${d}/Dockerfile
    sed -i -e "s/{{PHP_VERSION}}/${php_ver}/" ${d}/Dockerfile
    echo "done."
done
echo "complete!"

exit 0
