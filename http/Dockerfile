FROM nginx:1.10.1

RUN mkdir /opt/magento/
COPY magento2/ /opt/magento/
RUN chown -R www-data:www-data /opt/magento/
RUN chmod -R 777 /opt/magento/