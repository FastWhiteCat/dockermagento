#!/bin/bash

echo "php starting ...";

DIR="/opt/magento/"

if [ ! -d "$DIR" ]; then 
	mkdir $DIR
fi

echo "Magento install"
cp /tmp/auth.json ~/.composer/auth.json
composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition $DIR
cd $DIR
find var vendor pub/static pub/media app/etc -type f -exec chmod u+w {} \;
find var vendor pub/static pub/media app/etc -type d -exec chmod u+w {} \;
chmod u+x bin/magento

php-fpm

echo "php started";
