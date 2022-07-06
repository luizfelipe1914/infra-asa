FROM debian:stable
RUN apt update;apt upgrade -y
RUN apt install -y apache2 dnsutils wget curl iproute2 iputils-ping
RUN mkdir -p /var/www/html/s2
RUN chown -R www-data:www-data /var/www/html/s2
COPY index.html /var/www/html/s2
COPY entrypoint.sh .
COPY apache2.conf /etc/apache2
RUN chmod +x /entrypoint.sh
COPY s2.conf /etc/apache2/sites-available
RUN a2ensite s2
EXPOSE 80/tcp
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["service", "apache2", "restart" ]


