#!/bin/bash

self=$(cd $(dirname $0);pwd)
dist=${self}/..

# -------------------------------------------------------------------
# for LAMP apache-php
# -------------------------------------------------------------------
dirs=(
    "${dist}/LAMP/apache-php5.6"
    "${dist}/LAMP/apache-php7.0"
)
for d in ${dirs[@]}; do
    src=${self}/../seed/LAMP/apache-php
    [ -d ${d} ] && rm -r ${d}
    php_ver=$(echo ${d} | awk -F "/" '{print $(NF)}' | sed 's/apache-php//')
    printf "Generate: docker-compose.yml for LAMP - Apache PHP ${php_ver} ..."
    mkdir -p ${d}
    cp ${src}/docker-compose.yml-seed ${d}/docker-compose.yml
    sed -i -e "s/{{PHP_VERSION}}/${php_ver}/" ${d}/docker-compose.yml
    sed -i -e "s/{{IMAGE_PHP_VERSION}}/${php_ver}/" ${d}/docker-compose.yml
    echo "done."
done

# -------------------------------------------------------------------
# for LAMP nginx-php-fpm
# -------------------------------------------------------------------
dirs=(
    "${dist}/LAMP/nginx-php5.6-fpm"
    "${dist}/LAMP/nginx-php7.0-fpm"
    "${dist}/LAMP/nginx-php5.6-fpm-alpine"
    "${dist}/LAMP/nginx-php7.0-fpm-alpine"
)
for d in ${dirs[@]}; do
    src=${self}/../seed/LAMP/nginx-php-fpm
    [ -d ${d} ] && rm -r ${d}
    php_ver=$(echo ${d} | awk -F "/" '{print $(NF)}' | sed -e 's/^nginx-php\([0-9.]*\)-.*$/\1/')
    is_alpine=$(echo ${d} | grep alpine)
    printf "Generate: docker-compose.yml for LAMP - Nginx PHP-FPM ${php_ver} ..."
    mkdir -p ${d}
    cp ${src}/docker-compose.yml-seed ${d}/docker-compose.yml
    [ ! ${is_alpine} ] && {
        sed -i -e "s/{{IMAGE_TAG}}/${php_ver}-fpm/" ${d}/docker-compose.yml
    } || {
        sed -i -e "s/{{IMAGE_TAG}}/${php_ver}-fpm-alpine/" ${d}/docker-compose.yml
    }
    echo "done."
done

echo "complete!"

exit 0
