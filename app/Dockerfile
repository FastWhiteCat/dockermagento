FROM fastwhitecat/php

RUN mkdir /opt/magento
RUN chown -R www-data:www-data /var/www/ /opt/magento/
VOLUME /opt/magento
USER www-data
RUN mkdir ~/.composer/
WORKDIR /opt/magento/
CMD setup.sh
