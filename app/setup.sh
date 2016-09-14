#!/bin/sh

echo "php starting ...";

composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition /opt/magento

php-fpm

echo "php started";