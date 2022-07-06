FROM debian:stable
RUN apt update;apt upgrade -y
RUN apt install -y nginx dnsutils wget curl iproute2 iputils-ping
COPY s1.conf /etc/nginx/sites-available
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
RUN mkdir -p /var/www/html/s1
RUN chown -R www-data:www-data /var/www/html
RUN chmod 755 /var/www/html
RUN ln -sv /etc/nginx/sites-available/s1.conf /etc/nginx/sites-enabled/
WORKDIR /var/www/html/s1
COPY index.html .
EXPOSE 80/tcp
ENTRYPOINT [ "/entrypoint.sh" ]
WORKDIR /
CMD [ "service", "nginx", "restart" ]
